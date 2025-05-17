HasACELoaded = isClass (configFile >> "cfgPatches" >> "ace_captives");
if (!isnil "CQB_MoveIntoVehicles_Interaction_Disable_Toggle" && { (!(CQB_MoveIntoVehicles_Interaction_Disable_Toggle)) }) then {
    // Remove captives from vehicle action
    player addAction
    [
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Unload Captives from nearby Vehicle</t>",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];

            // Find the nearest vehicle with captives
            _nearVehicles = nearestObjects [_caller, ["Car", "Truck", "Tank", "Air"], 10];
            _vehicle = objNull;

            {
                // Check if the vehicle has any captives (units with CQB_IsArrested = true)
                _captives = crew _x select { _x getVariable ["CQB_IsArrested", false] };
                if (count _captives > 0) exitWith {
                    _vehicle = _x;
                };
            } forEach _nearVehicles;

            if (isNull _vehicle) exitWith {
                ['', "No vehicle with captives nearby..."] call BIS_fnc_showSubtitle;
            };

            // Get all captives in the vehicle
            _captives = crew _vehicle select { _x getVariable ["CQB_IsArrested", false] };

            // Remove captives from the vehicle and place them on the ground
            {
                [_x, _vehicle] spawn {
                    params ["_this", "_vehicle"];
                    if (HasACELoaded) then {
                    [_this] call ACE_captives_fnc_vehicleCaptiveMoveOut;
                    } else {
                    moveOut _this;
                    _pos = [(getPos _vehicle), 1, 5, 1, 0, 20, 0] call BIS_fnc_findSafePos;
                    _this setPos _pos;
                    }; 
                    _this setVariable ["CQB_IsbeingDragged", false, true];
                    _this setVariable ["CQB_IsbeingMoved", false, true];


                    [_this, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                    [_this, "AnimCableCrouchStart"] remoteExec ["playMove", 0];

                    uiSleep 1;

                    _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                    [_this, _rAnim] remoteExec ["switchMove", 0];
                    [_this, _rAnim] remoteExec ["playMove", 0];

                    uiSleep 0.1;
                };
            } forEach _captives;

            // Play an animation for the player
            _rHandAnim = selectRandom ["HandSignalFreeze", "HandSignalGetDown"];
            [_caller, _rHandAnim] remoteExec ["playAction", 0];

            // Notify the player
            _displayName = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
            _text = format ["Captives have been removed from %1", _displayName];
            ['', _text] call BIS_fnc_showSubtitle;
        },
        nil,
        1500,
        true,
        false,
        "",
        "
            (_originalTarget == player) && 
            (alive _originalTarget) &&
            (isNull (objectParent _originalTarget)) && 
            (count (nearestObjects [_originalTarget, ['Car', 'Truck', 'Tank', 'Air'], 10] select { 
                count (crew _x select { _x getVariable ['CQB_IsArrested', false] }) > 0 
            }) > 0)
        ",
        5,
        false,
        "",
        ""
    ];
};

    private _hasZen = isClass (configFile >> "CfgPatches" >> "zen_custom_modules");
    if !(_hasZen) exitwith
    {
        diag_log "******CBA and/or ZEN not detected. They are required for this mission script.";
    };

if (hasinterface) then {

    ["CQB Interactions", "Deplete Morale",
        {
            params ["_modulePosASL", "_attachedobject"];
            
            deletevehicle _logic;
            
            [_modulePosASL, _attachedobject] spawn {
                params ["_modulePosASL", "_attachedobject"];
                
                _unit = _attachedobject;
                
                if (!((_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]) <= (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold))) then {
                    _unit setVariable ["CBQ_Interactions_UnitMorale", (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold), true];
                };
                
            };

        }, "x\zen\addons\attributes\ui\careless_ca.paa"] call zen_custom_modules_fnc_register;

        ["CQB Interactions", "Detain Unit",
        {
            params ["_modulePosASL", "_attachedobject"];
            
            deletevehicle _logic;
            
            [_modulePosASL, _attachedobject] spawn {
                params ["_modulePosASL", "_attachedobject"];
                
                _unit = _attachedobject;

                _unit setVariable ["CBQ_Interactions_UnitMorale", (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold), true];

                _weapon = currentWeapon _unit;
                _unit removeWeapon (currentWeapon _unit);
                _unit allowfleeing 0;
                [_unit, true] remoteExec ["setCaptive", 0];
                _unit setVariable ["CQB_IsArrested", true, true];
                if (HasACELoaded) then {
                        [_unit, true] call ACE_captives_fnc_setHandcuffed;
                };

                [_unit,"AnimCableStandStart"] remoteExec ["playAction", 0];

                uiSleep 1;

                [_unit, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                [_unit, "AnimCableCrouchStart"] remoteExec ["playmove", 0];

                uiSleep 2;

                _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                [_unit, _rAnim] remoteExec ["switchMove", 0];
                [_unit, _rAnim] remoteExec ["playmove", 0];
 
            };

        }, "a3\ui_f\data\igui\cfg\holdactions\holdaction_secure_ca.paa"] call zen_custom_modules_fnc_register;

        ["CQB Interactions", "Free Captive",
        {
            params ["_modulePosASL", "_attachedobject"];
            
            deletevehicle _logic;
            
            [_modulePosASL, _attachedobject] spawn {
                params ["_modulePosASL", "_attachedobject"];
                
                _unit = _attachedobject;

                    // Animation for untying
                    [_unit, "AnimCableCrouchToStand"] remoteExec ["switchMove", 0];
                    [_unit, "AnimCableCrouchToStand"] remoteExec ["playMove", 0];
                    uiSleep 2;
                    [_unit, ""] remoteExec ["switchMove", 0];
                    [_unit,"AnimCableStandEnd"] remoteExec ["playAction", 0];

                    uiSleep 1;

                    _unit allowFleeing 1;
                    [_unit, false] remoteExec ["setCaptive", 0];
                    _unit setUnitPos "AUTO";

                    // Adjust morale and trigger event
                    _unit setVariable ["CBQ_Interactions_UnitMorale", (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold * 2), true];
                    ["CBQ_Interactions_MoraleChanged", [_unit, (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale])]] call CBA_fnc_localEvent;

                    // Update the unit's arrested state
                    _unit setVariable ["CQB_IsArrested", false, true];
                    if (HasACELoaded) then {
                        [_unit, false] call ACE_captives_fnc_setHandcuffed;
                    };

                    // Re-enable AI for the unit
                    ["move", "path", "ANIM", "TARGET", "AUTOTARGET"] apply {
                        [_unit, _x] remoteExec ["enableAI", 0, _unit];
                    };
                
            };

        }, "a3\ui_f\data\igui\cfg\holdactions\holdaction_secure_ca.paa"] call zen_custom_modules_fnc_register;

        ["CQB Interactions", "Toggle Morale System",
            {
                params [["_pos", [0, 0, 0], [[]], 3], ["_logic", objNull, [objNull]]];

                ["Toggle Morale System",
                    [
                ["CHECKBOX", ["Toggle Morale System on UNIT", "Will set the Morale System to true or false depening on the checkbox."], [false]]
                ], {
                    params["_values", "_arguments"];
                    
                    _value = _values select 0;
                    _position=_arguments select 0;
                    _unit = _arguments select 1;
                    
                        if !(_value) then {

                            _unit setVariable ["CBQ_Interactions_UnitMorale", 2369, true];
                            ["CBQ_Interactions_MoraleChanged", [_unit, 2369]] call CBA_fnc_localEvent;

                            //It's that easy folks
                            _unit setVariable ["CQB_Interactions_ExemptfromMoraleSystem", _value, true];

                        } else {

                            _unit setVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale, true];
                            ["CBQ_Interactions_MoraleChanged", [_unit, CQB_Interactions_BaseMorale]] call CBA_fnc_localEvent;

                            [_unit] spawn CQB_Interactions_Fnc_PreSetupSpawner;

                            //It's that easy folks, still is. ;)
                            _unit setVariable ["CQB_Interactions_ExemptfromMoraleSystem", _value, true];
                        };

                    }, {}, [_pos, _logic]] call zen_dialog_fnc_create;
        }, "x\zen\addons\common\ui\check_all_ca.paa"] call zen_custom_modules_fnc_register;
};