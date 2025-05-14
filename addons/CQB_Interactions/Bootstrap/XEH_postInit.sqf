
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