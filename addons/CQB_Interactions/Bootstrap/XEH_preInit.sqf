HasIMSLoaded = isClass (configfile >> "CfgPatches" >> "WBK_MeleeMechanics");
HasACELoaded = isClass (configFile >> "cfgPatches" >> "ace_captives");
//CBA_3 Addon options settings
// Disable Feature
// [ 
//     "CQB_Interactions_DisableForAI_toggle", 
//     "CHECKBOX", 
// 	["DISABLE CQB Interactions for 'AI'", "[REQUIRES RESTART!]"],
//     ["CQB Interactions", "0 | Disable Features"],
//     false,
//     1,
//     {   
//         params ["_value"]; 
//         CQB_Interactions_DisableForAI_value = _value; 
//     },
// 	true
// ] call CBA_fnc_addSetting;
CQB_Interactions_DisableForAI_value = false;
publicVariable "CQB_Interactions_DisableForAI_value";

// [ 
//     "CQB_Interactions_DisableForPlayers_toggle", 
//     "CHECKBOX", 
// 	["DISABLE CQB Interactions for 'Players'", "[REQUIRES RESTART!]"],
//     ["CQB Interactions", "0 | Disable Features"],
//     false,
//     1,
//     {   
//         params ["_value"]; 
//         CQB_Interactions_DisableForPlayers_value = _value; 
//     },
// 	true
// ] call CBA_fnc_addSetting;
CQB_Interactions_DisableForPlayers_value = true;
publicVariable "CQB_Interactions_DisableForPlayers_value";

[ 
    "CQB_Interactions_DisableTheWholeThing_toggle", 
    "CHECKBOX", 
    ["DISABLE `CQB Interactions` completely!", "The mod will stop working entirely, a smart option for unit aux mods. [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_DisableTheWholeThing = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_Interactions_DisableForWest_toggle", 
    "CHECKBOX", 
	["IGNORE: Blufor/West side", "[REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_DisableForWEST_value = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_Interactions_DisableForEast_toggle", 
    "CHECKBOX", 
	["IGNORE: Opfor/east side", "[REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_DisableForEAST_value = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_Interactions_DisableForIndependent_toggle", 
    "CHECKBOX", 
	["IGNORE: Independent side", "[REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_DisableForIndependent_value = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_Interactions_DisableForCivilian_toggle", 
    "CHECKBOX", 
	["IGNORE: Civilian side", "[REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_DisableForCivilian_value = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_Detain_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: Detain/Untie Interactions", "Removes HandCuff Actions: Detain, Untie, Detain (body) [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_Detain_Interaction_Disable = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_CarryCaptive_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: 'Carry Captive Interactions'", "Removes Carry Captive Actions, [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_CarryCaptive_Interaction_Disable = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_MoveCaptive_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: 'Move Captive Interactions'", "Removes Move Captive Actions, [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_MoveCaptive_Interaction_Disable = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_FollowOrder_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: 'Follow Orders'", "Removes Follow Captive Actions, [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_FollowOrder_Interaction_Disable = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_DetainDeadBody_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: Detain 'Dead Body'", "Removes 'Detain Dead Body' action, [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_DetainDeadBody_Interaction_Disable_Toggle = _value; 
    },
	true
] call CBA_fnc_addSetting;

[ 
    "CQB_MoveIntoVehicles_Interaction_Disable_Toggle", 
    "CHECKBOX", 
	["DISABLE: 'Move Captive into Vehicle'", "Removes 'Move Captive into Vehicle' actions, [REQUIRES RESTART!]"],
    ["CQB Interactions", "0 | Disable Features"],
    false,
    1,
    {   
        params ["_value"]; 
        CQB_MoveIntoVehicles_Interaction_Disable_Toggle = _value; 
    },
	true
] call CBA_fnc_addSetting;


[ 
    "CQB_Interactions_UnarmedCiviliansExtradamage_Toggle", 
    "CHECKBOX", 
	["Unarmed Civilians take more 'Morale Damage' ?", ""],
    ["CQB Interactions", "1 | Extra options"],
    true,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_UnarmedCiviliansExtradamage = _value; 
    },
	false
] call CBA_fnc_addSetting;


// SLIDER --- extra arguments: [_min, _max, _default, _trailingDecimals, _isPercentage]
[
    "CQB_Interactions_MoraleModifier",
    "SLIDER",
    ["Morale Modifier", "NUMBER the Morale 'Damage' is multiplied by, Can be used to make it harder (Lower value) or easier (Higher value) to make unit surrender. Default: 1, a.k.a not modified."],
    ["CQB Interactions", "1 | Extra options"],
    [0.1, 3.0, 1.0, 1],
    1,
    {},
    false
] call CBA_fnc_addSetting;

// SLIDER --- extra arguments: [_min, _max, _default, _trailingDecimals, _isPercentage]
[
    "CQB_Interactions_SurrenderThreshold",
    "SLIDER",
    ["Surrender Threshold", "Surrender when the unit Morale is below this value, Default: 25%"],
    ["CQB Interactions", "1 | Extra options"],
    [0.01, 0.95, 0.25, 2, true],
    1,
    {},
    false
] call CBA_fnc_addSetting;

// SLIDER --- extra arguments: [_min, _max, _default, _trailingDecimals, _isPercentage]
[
    "CQB_Interactions_ShockStunThreshold",
    "SLIDER",
    ["Stun/Shock Threshold", "Disable Movement (running away, etc) and play a Stunned/Shocked animation when the unit Morale is below this value, Default: 50%"],
    ["CQB Interactions", "1 | Extra options"],
    [0.05, 0.75, 0.50, 2, true],
    1,
    {},
    false
] call CBA_fnc_addSetting;

// SLIDER --- extra arguments: [_min, _max, _default, _trailingDecimals, _isPercentage]
[
    "CQB_Interactions_ShoutingDistance",
    "SLIDER",
    ["Shouting Distance", "Distance at which shouting works, fit it to whatever OP you are running. Default: 50"],
    ["CQB Interactions", "1 | Extra options"],
    [5, 500, 50, 0, false],
    1,
    {},
    false
] call CBA_fnc_addSetting;

CQB_Interactions_BaseMorale = 100;
publicVariable "CQB_Interactions_BaseMorale";

[ 
    "CQB_Interactions_PlayerVoice_toggle", 
    "CHECKBOX", 
	["Enable Player Voice", "IF the player should speak when making AI surrender, Default: True"],
    ["CQB Interactions", "1 | Extra options"],
    true,
    1,
    {   
        params ["_value"]; 
        CQB_Interactions_PlayerVoice_value = _value; 
    },
	false
] call CBA_fnc_addSetting;

// Surrender KEYBIND
["CQB Interactions", "Order Surrender", ["Order AI to surrender", "Orders all AI within 50 meters AND Line of sight to surrender"], {

    _player = missionNamespace getVariable ["bis_fnc_moduleRemoteControl_unit", player];

    if ((_player getVariable ["CBQ_Interactions_ShoutPressed", false]) or (!(isNull objectParent _player)) or ((isNull _player) or !(alive _player)) ) exitWith {};

    _player setVariable ["CBQ_Interactions_ShoutPressed", true];

    _inRange = allUnits inAreaArray [_player, (CQB_Interactions_ShoutingDistance / 2), (CQB_Interactions_ShoutingDistance / 2), 0, false, 2];
    // systemChat "order!";

    [_player, _inRange] spawn {
        params ["_player", "_inRange"];

        if (CQB_Interactions_PlayerVoice_value) then {
        _speaker = ["gendarmerie_playerweapon_gendarme_b_ahmeed_01","gendarmerie_playerweapon_gendarme_b_01_vincent","gendarmerie_playerweapon_gendarme_a_ahmeed_01","gendarmerie_playerweapon_gendarme_a_01_vincent","Syndikat_PlayerWeapon_Soldier_A_Ahmeed_01", "Syndikat_PlayerWeapon_Soldier_A_01_Vincent", "Syndikat_PlayerWeapon_Soldier_B_01_Vincent", "Syndikat_PlayerWeapon_Soldier_B_Ahmeed_01"] call BIS_fnc_SelectRandom;
        _player say3D _speaker;
        };

        _rHandAnim = selectRandom [
        "GestureHiC",
        "GestureHi",
        "HandSignalFreeze",
        "HandSignalGetDown",
        "HandSignalHold",
        "HandSignalPoint"
        ];
        [_player, _rHandAnim] remoteExec ["playAction", 0];

        [_player, _inRange] spawn {
            params ["_player", "_inRange"];

            {
                if ( (!(isPlayer _x)) and ((([objNull, "VIEW"] checkVisibility [eyePos _player, eyePos _x]) > 0) and ((_player distance _x) < CQB_Interactions_ShoutingDistance)) ) then {

                    if (_x getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
                    if (_x == _player) exitWith {};
                    if (isPlayer _x) exitWith {};
                    if (!((vehicle _x) isKindOf "MAN")) exitWith {};

                    if ((str (side _player) == "CIV") and (((currentWeapon _player) == "")) or (captive _player)) exitWith {};
                    if ( ( !([(side _player), (side _x)] call BIS_fnc_sideIsEnemy) && (str (side _x) != "CIV") && !(captive _x))) exitWith {};                    

                    if (_x == _player) exitWith {};
                    if (isPlayer _x) exitWith {};

                    _OldVar = (_x getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);

                    _random = (CQB_Interactions_BaseMorale * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier));

                    _NewVar = (_OldVar) - (_random);
                    _side = (str (side _x));
                    
                    if (cameraOn == _player && cameraView == "GUNNER") then
                    {
                        _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
                    };

                    if ((_side == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
                    {
                        // systemChat "is a civ";
                        // systemChat format ["%1, %2, %3", _x, (side _x), str (side _x)];
                        _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
                    } else {

                        // systemChat "not a civ";
                        // systemChat format ["%1, %2, %3", _x, (side _x), str (side _x)];
                    };

                    if (_NewVar <= 0) then { _NewVar = 0 };
                    _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
                    _x setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];

                    if (_NewVar != _OldVar) then {
                        ["CBQ_Interactions_MoraleChanged", [_x, _NewVar]] call CBA_fnc_localEvent;
                    };

                };
                uiSleep 0.1;
            } forEach _inRange;

        };

        uiSleep 1;
        [_player, ""] remoteExec ["playActionNow", 0];
        _player setVariable ["CBQ_Interactions_ShoutPressed", false];

    };
}, {},[ 4, [false, true, false]]] call cba_fnc_addKeybind;

CQB_Interactions_Fnc_PreSetupSpawner = {
   params ["_unit"]; 

		uiSleep (random 5); // uiSleep at random intervals

		waitUntil {uiSleep 0.05; ((time > 5) and !(isNull findDisplay 46)) };

        if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
        if (_unit getVariable ["CQB_Interactions_PreSetupAdded", false]) exitWith {};

		//Custom units Exit!
		if (
           ( gettext((configOf _unit) >> 'moves') != 'CfgmovesMaleSdr') ||
            (gettext((configOf _unit) >> 'faction') in [
                'wbk_AI_ZHAMBIES',
                'wbk_AI_StarWars_Droids',
                'wbk_EOO_Secession',
                'wbk_EOO_Vamp',
                'Empires_Of_Old_faction_Vamp',
                'wbk_EOO_FreeCompany',
                'wbk_EOO_Empire',
                'wbk_HL_Aliens',
                'wbk_HL_resistance',
                'wbk_HL_Combines',
                'dev_flood',
                'dev_mutants'
            ]) ||
            (gettext((configOf _unit) >> 'editorSubcategory') == 'wbk_MeleeAi_SPACE_MARinES') ||
            (gettext ((configOf _unit) >> 'author') == 'WebKnight')
        ) exitWith {};

		//CBA Settings check
		if (CQB_Interactions_DisableTheWholeThing) exitWith {};
		_side = (side _unit);
		if ((_side == west) and CQB_Interactions_DisableForWEST_value) exitWith {};
		if ((_side == east) and CQB_Interactions_DisableForEAST_value) exitWith {};
		if ((_side == independent) and CQB_Interactions_DisableForIndependent_value) exitWith {};
        _side = (str (side _unit));
		if ((_side == 'CIV') and CQB_Interactions_DisableForCivilian_value) exitWith {};
		if ((!(isPlayer _unit)) and (CQB_Interactions_DisableForAI_value)) exitWith {};
        if ((isPlayer _unit) and (CQB_Interactions_DisableForPlayers_value)) exitWith {};

		//if Unit passes,apply code!
        [_unit] call CQB_Interactions_Fnc_PreSetupUnit;
};

//class eventhandler
["CAManBase", "initPost", {
    params ["_unit"];

    [_unit] spawn CQB_Interactions_Fnc_PreSetupSpawner;

}] call CBA_fnc_addClassEventHandler;

CQB_Interactions_Fnc_MoraleCheck = {
    params ["_unit", "_Morale"];

    if (_unit getVariable ["CBQ_Interactions_CQB_Interactions_Fnc_MoraleCheck_Used", false]) exitWith {};
    if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
    if ( ((lifeState _unit) == "INCAPACITATED") or ((lifeState _unit) == "UNCONSCIOUS") or ((lifeState _unit) == "ASLEEP") ) exitWith { 
        _unit setVariable ["CBQ_Interactions_UnitMorale", 0, true];
        _unit setVariable ["CBQ_Interactions_AbleToBeArrested", true, true];
      };
    if (
        ((_unit getVariable ["CQB_IsArrested", false]) or
        (_unit getVariable ["CQB_IsFollowing", false]) or
        (_unit getVariable ["CQB_IsbeingDragged", false])) or
        (!(isNull objectParent _unit)) or
        ((isNull _unit) or
        !(alive _unit))
        ) exitWith {};

    //2/3 of the units morale needs to be depleted
    if (_Morale <= ((CQB_Interactions_BaseMorale * CQB_Interactions_ShockStunThreshold))) then {

        _unit setVariable ["CBQ_Interactions_CQB_Interactions_Fnc_MoraleCheck_Used", true, true];

        _allanims = ["act_alien_gesture","acts_trailer_nodscientist","acts_hubtalk_pointlefthigh","acts_hubtalk_pointrighthigh","acts_hubtalk_pointrightmiddle","acts_hubtalk_weightshift1","acts_hubtalk_weightshift2","acts_hubtalk_weightshift3","acts_hubtalk_stretchwrist2","acts_hubtalk_scratchhead1","acts_hubtalk_scratchhead2","acts_hubtalk_scratchhead3","acts_hubtalk_salute1","acts_hubtalk_salute3","acts_hubtalk_lookaround3","acts_hubtalk_lookaround2","acts_jetscrewaid_idle_1_m","acts_jetscrewaid_idle_1","acts_civiltalking_2","acts_civiltalking_1","acts_kore_introducing","acts_jetsmarshallingstop_in","acts_jetsmarshallingstraight_in","aa_actsppnemstpsnonwnondnon_panicking","apanppnemstpsnonwnondnon_g01","apanppnemstpsnonwnondnon_g02","apanppnemstpsnonwnondnon_g03","apanpknlmstpsnonwnondnon_g01","apanpknlmstpsnonwnondnon_g02","apanpknlmstpsnonwnondnon_g03","apanpercmstpsnonwnondnon_g01","apanpercmstpsnonwnondnon_g02","apanpercmstpsnonwnondnon_g03","amovpercmstpsnonwnondnon_scared","amovpercmstpsnonwnondnon_scared2","acts_shockedunarmed_2_loop","aa_amovpercmstpsnonwnondnon_panicking1loop","aa_amovpercmstpsnonwnondnon_panicking2loop","aa_amovpercmstpsnonwnondnon_panicking3loop","aa_actspercmstpsnonwnondnon_panicking1","aa_actspercmstpsnonwnondnon_panicking2","aa_actspercmstpsnonwnondnon_panicking3","aa_actspercmstpsnonwnondnon_panicking4","aa_actspercmstpsnonwnondnon_panicking5","aa_actspercmstpsnonwnondnon_panicking6","aa_actspercmstpsnonwnondnon_panicking7",
        "acts_crouchingidlerifle01_ik","acts_crouchingcoveringrifle01_ik","act_alien_gesture_rifle","acts_peering_front","acts_ambient_rifle_drop","acts_ambient_facepalm_1","acts_ambient_facepalm_2","acts_ambient_dismissing","acts_ambient_defensive","acts_ambient_aggressive","acts_ambient_disagreeing","acts_ambient_disagreeing_with_pointing","acts_rifle_operations_front","acts_pointing_front","acts_commenting_on_fight_loop","acts_soldier_moves_inside_1","acts_breakout_squadleader_1","amovpercmstpsnonwnondnon_scared","amovpercmstpsnonwnondnon_scared2","acts_watching_fire_loop_ik","acts_shocked_1_loop","acts_shocked_4_loop","acts_shockedunarmed_2_loop"];

        if (toLower (animationState _unit) in _allAnims) exitWith {};

        _curw = currentWeapon _unit;
        if ((_curw == "") or ((primaryWeapon _unit == "") and (handgunWeapon _unit == "") and (secondaryWeapon _unit == "")) or ({getNumber (configFile/"CfgWeapons"/_x/"type") in [1,2,4,5]} count [primaryWeapon _unit, secondaryWeapon _unit, handgunWeapon _unit] == 0 )) then {

            [_unit, "path"] remoteExec ["disableAI", 0, _unit];
            _unit setUnitPos "UP";

            _rAnim = selectRandom ["Act_Alien_Gesture","Acts_trailer_nodScientist","Acts_hubTalk_pointLeftHigh","Acts_hubTalk_pointRightHigh","Acts_hubTalk_pointRightMiddle","Acts_hubTalk_weightShift1","Acts_hubTalk_weightShift2","Acts_hubTalk_weightShift3","Acts_hubTalk_stretchWrist2","Acts_hubTalk_scratchHead1","Acts_hubTalk_scratchHead2","Acts_hubTalk_scratchHead3","Acts_hubTalk_salute1","Acts_hubTalk_salute3","Acts_hubTalk_lookAround3","Acts_hubTalk_lookAround2","Acts_JetsCrewaid_idle_1_m","Acts_JetsCrewaid_idle_1","Acts_CivilTalking_2","Acts_CivilTalking_1","Acts_Kore_Introducing","Acts_JetsMarshallingStop_in","Acts_JetsMarshallingStraight_in","AA_ActsPpneMstpSnonWnonDnon_Panicking","ApanPpneMstpSnonWnonDnon_G01","ApanPpneMstpSnonWnonDnon_G02","ApanPpneMstpSnonWnonDnon_G03","ApanPknlMstpSnonWnonDnon_G01","ApanPknlMstpSnonWnonDnon_G02","ApanPknlMstpSnonWnonDnon_G03","ApanPercMstpSnonWnonDnon_G01","ApanPercMstpSnonWnonDnon_G02","ApanPercMstpSnonWnonDnon_G03","AmovPercMstpSnonWnonDnon_Scared","AmovPercMstpSnonWnonDnon_Scared2","Acts_ShockedUnarmed_2_Loop","AA_AmovPercMstpSnonWnonDnon_Panicking1loop","AA_AmovPercMstpSnonWnonDnon_Panicking2loop","AA_AmovPercMstpSnonWnonDnon_Panicking3loop","AA_ActsPercMstpSnonWnonDnon_Panicking1","AA_ActsPercMstpSnonWnonDnon_Panicking2","AA_ActsPercMstpSnonWnonDnon_Panicking3","AA_ActsPercMstpSnonWnonDnon_Panicking4","AA_ActsPercMstpSnonWnonDnon_Panicking5","AA_ActsPercMstpSnonWnonDnon_Panicking6","AA_ActsPercMstpSnonWnonDnon_Panicking7"];
            [_unit, _rAnim] remoteExec ["switchMove", 0];
            [_unit, _rAnim] remoteExec ["playMove", 0];

        } else {

            [_unit, "path"] remoteExec ["disableAI", 0, _unit];
            _unit setUnitPos "UP";

            _rAnim = selectRandom ["Acts_CrouchingIdleRifle01_IK","Acts_CrouchingCoveringRifle01_IK","Act_Alien_Gesture_Rifle","Acts_Peering_Front","Acts_Ambient_Rifle_Drop","Acts_Ambient_Facepalm_1","Acts_Ambient_Facepalm_2","Acts_Ambient_Dismissing","Acts_Ambient_Defensive","Acts_Ambient_Aggressive","Acts_Ambient_Disagreeing","Acts_Ambient_Disagreeing_with_pointing","Acts_Rifle_Operations_Front","Acts_Pointing_Front","Acts_Commenting_On_Fight_loop","Acts_Soldier_Moves_Inside_1","Acts_Breakout_SquadLeader_1","AmovPercMstpSnonWnonDnon_Scared","AmovPercMstpSnonWnonDnon_Scared2","Acts_Watching_Fire_Loop_IK","Acts_Shocked_1_Loop","Acts_Shocked_4_Loop","Acts_ShockedUnarmed_2_Loop"];
            [_unit, _rAnim] remoteExec ["switchMove", 0];
            [_unit, _rAnim] remoteExec ["playMove", 0];

        };   

        uiSleep 1;
        _unit setVariable ["CBQ_Interactions_CQB_Interactions_Fnc_MoraleCheck_Used", false, true];         

    };

};

["CBQ_Interactions_MoraleChanged", {
	params ["_unit", "_Morale"];

    [_unit, _Morale] spawn CQB_Interactions_Fnc_MoraleCheck;    

}] call CBA_fnc_addEventHandler;

//Remove from system function
CQB_Interactions_Fnc_DisableMoraleSystem = {
params ["_unit", "_value"];

if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};

//reset before disabling
    if (_value) then {

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

};

/*
MAIN FUNCTION
*/

CQB_Interactions_Fnc_PreSetupUnit = {
    params ["_unit"];
    //CODE

    // if (isServer) then { systemChat "server" };

    if (_unit getVariable ["CQB_Interactions_PreSetupAdded", false]) exitWith {};
    _unit setVariable ["CQB_Interactions_PreSetupAdded", true, true];

    _unit addEventHandler ["HitPart", {
	(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect", "_instigator"];


       if (_target getVariable ["CBQ_Interactions_HitPartUsed", false]) exitWith {};
        if (isPlayer target) exitWith {};

        if ((str (side _shooter) == "CIV") and (((currentWeapon _shooter) == "")) or (captive _shooter)) exitWith {};
        if ( ( !([(side _shooter), (side _target)] call BIS_fnc_sideIsEnemy) && (str (side _target) != "CIV") && !(captive _target))) exitWith {};

        [_target] spawn {
            params ["_unit"];

            _unit setVariable ["CBQ_Interactions_HitPartUsed", true, true];
            if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
            
            _random = (CQB_Interactions_BaseMorale * 0.35 * CQB_Interactions_MoraleModifier);

            _OldVar = (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);
            _NewVar = (_OldVar) - (_random);

            if (((str (side _unit)) == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
            {
                _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
            };

            if (_NewVar <= 0) then { _NewVar = 0 };
            _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
            _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];

            if (_NewVar != _OldVar) then {
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;
            };

            uiSleep 3;

            _unit setVariable ["CBQ_Interactions_HitPartUsed", false, true];

        };

    }];

    _unit addEventHandler ["FiredNear", {
        params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

        if (_unit getVariable ["CBQ_Interactions_FiredNearUsed", false]) exitWith {};
        if (isPlayer _unit) exitWith {};

        if ((str (side _firer) == "CIV") and (((currentWeapon _firer) == "")) or (captive _firer)) exitWith {};
        if ( ( !([(side _firer), (side _unit)] call BIS_fnc_sideIsEnemy) && (str (side _unit) != "CIV") && !(captive _unit))) exitWith {};

        [_unit] spawn {
            params ["_unit"];

            _unit setVariable ["CBQ_Interactions_FiredNearUsed", true, true];
            if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};

            _random = (CQB_Interactions_BaseMorale * 0.10 * CQB_Interactions_MoraleModifier);

            _OldVar = (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);
            _NewVar = (_OldVar) - (_random);
            if (((str (side _unit)) == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
            {
                _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
            };            
            if (_NewVar <= 0) then { _NewVar = 0 };
            _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
            _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];

            if (_NewVar != _OldVar) then {
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;
            };

            uiSleep 5;

            _unit setVariable ["CBQ_Interactions_FiredNearUsed", false, true];

        };

    }];

    _unit addEventHandler ["Explosion", {
        params ["_vehicle", "_damage", "_source"];

        if (_vehicle getVariable ["CBQ_Interactions_ExplosionUsed", false]) exitWith {};
        if (_vehicle getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
        if (isPlayer _vehicle) exitWith {};

        if ((str (side player) == "CIV") and (((currentWeapon player) == "")) or (captive player)) exitWith {};
        if ( ( !([(side player), (side _vehicle)] call BIS_fnc_sideIsEnemy) && (str (side _vehicle) != "CIV") && !(captive _vehicle))) exitWith {};

        [_vehicle] spawn {
            params ["_unit"];

            _unit setVariable ["CBQ_Interactions_ExplosionUsed", true, true];

            _random = (CQB_Interactions_BaseMorale * 0.25 * CQB_Interactions_MoraleModifier);

            _OldVar = (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);
            _NewVar = (_OldVar) - (_random);
            if (((str (side _unit)) == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
            {
                _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
            };            
            if (_NewVar <= 0) then { _NewVar = 0 };
            _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
            _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];

            if (_NewVar != _OldVar) then {
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;
            };

            uiSleep 3;

            _unit setVariable ["CBQ_Interactions_ExplosionUsed", false, true];

        };

    }];

    if (HasACELoaded) then {
    ["ace_captiveStatusChanged", {
    _this spawn {
        params ["_unit", "_state", "_reason", "_caller"];
        if (CQB_Detain_Interaction_Disable) exitWith {};
        if (_reason == "SetSurrendered") exitWith {};
        if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};
		if (CQB_Interactions_DisableTheWholeThing) exitWith {};
		_side = (side _unit);
		if ((_side == west) and CQB_Interactions_DisableForWEST_value) exitWith {};
		if ((_side == east) and CQB_Interactions_DisableForEAST_value) exitWith {};
		if ((_side == independent) and CQB_Interactions_DisableForIndependent_value) exitWith {};
        _side = (str (side _unit));
		if ((_side == 'CIV') and CQB_Interactions_DisableForCivilian_value) exitWith {};
		if ((!(isPlayer _unit)) and (CQB_Interactions_DisableForAI_value)) exitWith {};
        if ((isPlayer _unit) and (CQB_Interactions_DisableForPlayers_value)) exitWith {};
        if (_reason == "SetHandcuffed") then {
            if (_state == true) then {
                if (!(_unit getVariable ['CQB_IsFollowing', false])) then {
                _unit removeWeapon (currentWeapon _unit);
                _unit allowFleeing 0;
                [_unit, true] remoteExec ["setCaptive", 0];
                _unit setVariable ["CQB_IsArrested", true, true];

                if ((_unit getVariable ["ACE_captives_isHandcuffed", false]) != true) then {
                    [_unit, true] call ACE_captives_fnc_setHandcuffed;
                };

                [_unit,"AnimCableStandStart"] remoteExec ["playAction", 0];
                uiSleep 1;
                [_unit, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                [_unit, "AnimCableCrouchStart"] remoteExec ["playMove", 0];
                uiSleep 2;

                _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                [_unit, _rAnim] remoteExec ["switchMove", 0];
                [_unit, _rAnim] remoteExec ["playMove", 0];
                };
            } else {
                if (!(_unit getVariable ['CQB_IsFollowing', false])) then {
                [_unit, "AnimCableCrouchToStand"] remoteExec ["switchMove", 0];
                [_unit, "AnimCableCrouchToStand"] remoteExec ["playMove", 0];
                uiSleep 2;
                [_unit, ""] remoteExec ["switchMove", 0];
                [_unit,"AnimCableStandEnd"] remoteExec ["playAction", 0];

                _rHandAnim = selectRandom ["HandSignalMoveForward", "HandSignalGetUp"]; 
                uiSleep 1;

                _unit allowFleeing 1;
                [_unit, false] remoteExec ["setCaptive", 0];
                _unit setUnitPos "AUTO";

                _NewVar = [(floor (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold * 2)), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
                _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;

                _unit setVariable ["CQB_IsArrested", false, true];
                ["move", "path", "ANIM", "TARGET", "AUTOTARGET"] apply {
                    [_unit, _x] remoteExec ["enableAI", 0, _unit];
                };
                };
            };
        };
    };
}] call CBA_fnc_addEventHandler;

["ace_captives_escortingCaptive", {
    _this spawn {
        params ["_unit", "_state", "_caller"];
        
        if(_state==true) then {
        if (!(_unit getVariable ['CQB_IsFollowing', false])) then {
        if (_unit getVariable ['CQB_IsbeingMoved', false]) exitWith {};
        if (_unit getVariable ['CQB_IsbeingDragged', false]) exitWith {};
        _unit setVariable ["CQB_IsbeingMoved", true, true];
        _unit setVariable ["CQB_IsFollowing", false, true];
        // [_unit,"AinjPfalMstpSnonWrflDnon_carried_still"] remoteExec ["switchMove",0];
                [_unit,""] remoteExec ["switchMove", 0];
                _unit setUnitPos "UP";
                [_unit,"AnimCableStandLoop"] remoteExec ["playActionNow", 0];
        };
        } else {
            if (!(_unit getVariable ['CQB_IsFollowing', false])) then {
            _unit setVariable ["CQB_IsbeingMoved", false, true];
            _unit setVariable ["CQB_IsbeingDragged", false, true];
            };
        };
    };
}] call CBA_fnc_addEventHandler;
};

    _unit addMPEventHandler ["MPKilled", {
    params ["_unit", "_killer", "_instigator", "_useEffects"];

        if (_unit getVariable ["CQB_IsArrested", false]) then {

            [_unit] spawn {
                params ["_unit"];
            if !(HasIMSLoaded) then {
            [_unit, ""] remoteExec ["switchMove", 0];
            };
            uiSleep 5;

            [_unit, "revive_secured"] remoteExec ["switchMove", 0];
            [_unit, "revive_secured"] remoteExec ["playMove", 0];

            };

            _unit removeAllEventHandlers "HitPart";
            _unit removeAllEventHandlers "FiredNear";
            _unit removeAllEventHandlers "Explosion"; 
            _unit removeAllMPEventHandlers "MPKilled";
        };

    }];

    //IMS compat
    if (HasIMSLoaded) then {

        _unit setVariable ["IMS_EventHandler_Staggered",{
        _victim = _this select 0;
        _attacker = _this select 1;

       if (_victim getVariable ["CBQ_Interactions_IMS_EventHandler_StaggeredUsed", false]) exitWith {};
        if (isPlayer _victim) exitWith {};

        if ((str (side _attacker) == "CIV") and (((currentWeapon _attacker) == "")) or (captive _attacker)) exitWith {};
        if ( ( !([(side _attacker), (side _victim)] call BIS_fnc_sideIsEnemy) && (str (side _victim) != "CIV") && !(captive _victim))) exitWith {};

        [_victim] spawn {
            params ["_unit"];

            _unit setVariable ["CBQ_Interactions_IMS_EventHandler_StaggeredUsed", true, true];
            if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};

            _random = (CQB_Interactions_BaseMorale * 0.25 * CQB_Interactions_MoraleModifier);

            _OldVar = (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);
            _NewVar = (_OldVar) - (_random);
            if (((str (side _unit)) == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
            {
                _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
            };            
            if (_NewVar <= 0) then { _NewVar = 0 };
            _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
            _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];


            if (_NewVar != _OldVar) then {
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;
            };

            uiSleep 3;

            _unit setVariable ["CBQ_Interactions_IMS_EventHandler_StaggeredUsed", false, true];

        };

        },true];

        _unit setVariable ["IMS_EventHandler_Hit",{
        _victim = _this select 0;
        _attacker = _this select 1;
        _weapon = _this select 2;

        if (_victim getVariable ["CBQ_Interactions_IMS_EventHandler_HitUsed", false]) exitWith {};
        if (isPlayer _victim) exitWith {};

        if ((str (side _attacker) == "CIV") and (((currentWeapon _attacker) == "")) or (captive _attacker)) exitWith {};
        if ( ( !([(side _attacker), (side _victim)] call BIS_fnc_sideIsEnemy) && (str (side _victim) != "CIV") && !(captive _victim))) exitWith {};

        [_victim] spawn {
            params ["_unit"];

            _unit setVariable ["CBQ_Interactions_IMS_EventHandler_HitUsed", true, true];
            if (_unit getVariable ["CQB_Interactions_ExemptfromMoraleSystem", false]) exitWith {};

            _random = (CQB_Interactions_BaseMorale * 0.25 * CQB_Interactions_MoraleModifier);

            _OldVar = (_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]);
            _NewVar = (_OldVar) - (_random);
            if (((str (side _unit)) == 'CIV') and (CQB_Interactions_UnarmedCiviliansExtradamage)) then
            {
                _NewVar = (_NewVar - (_NewVar * ((selectRandom [0.03, 0.05, 0.07, 0.10, 0.15, 0.25, 0.30]) * CQB_Interactions_MoraleModifier)));
            };            
            if (_NewVar <= 0) then { _NewVar = 0 };
            _NewVar = [(floor _NewVar), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
            _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];

            if (_NewVar != _OldVar) then {
                ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;
            };

            uiSleep 3;

            _unit setVariable ["CBQ_Interactions_IMS_EventHandler_HitUsed", false, true];

        };

        },true];

    };

    if (!isnil "CQB_Detain_Interaction_Disable" && {
    (!(CQB_Detain_Interaction_Disable))
    }) then {

        //detain actions
        [ 
        _unit,            
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Detain</t>",          
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",  
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",  
        "((alive _target) and (_this distance _target < 3) and (_target getVariable ['CBQ_Interactions_AbleToBeArrested', false]) and (!(_target getVariable ['CQB_IsArrested', false]) and ((_target getVariable ['CBQ_Interactions_UnitMorale', CQB_Interactions_BaseMorale]) <= (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold))) or ((alive _target) and (_target getVariable ['ace_captives_isSurrendering', false]) && (HasACELoaded) && (_this distance _target < 3)))",       
        "_caller distance _target < 3",       
        {},              
        {},              
        {
            [_target] spawn {
                params ["_unit"];

                if ( ((lifeState _unit) == "INCAPACITATED") or ((lifeState _unit) == "UNCONSCIOUS") or ((lifeState _unit) == "ASLEEP") ) then { 

                    _unit removeWeapon (currentWeapon _unit);
                    _unit allowfleeing 0;
                    [_unit, true] remoteExec ["setCaptive", 0];
                    _unit setVariable ["CQB_IsArrested", true, true];
                    if (HasACELoaded) then {
                        [_unit, true] call ACE_captives_fnc_setHandcuffed;
                    };

                    [_unit, "revive_secured"] remoteExec ["switchMove", 0];
                    [_unit, "revive_secured"] remoteExec ["playMove", 0];
                } else {

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
                    [_unit, "AnimCableCrouchStart"] remoteExec ["playMove", 0];

                    uiSleep 2;

                    _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                    [_unit, _rAnim] remoteExec ["switchMove", 0];
                    [_unit, _rAnim] remoteExec ["playMove", 0];
                };
            };

        },
        {},
        [],              
        1,              
        2369,              
        false,             
        false             
        ] remoteExec ["BIS_fnc_holdActionAdd", 0];

        // Untie
        [_unit,
        [
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Untie</t>",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
                
                [_target, _caller] spawn {
                    params ["_unit","_player"];

                    // Animation for untying
                    [_unit, "AnimCableCrouchToStand"] remoteExec ["switchMove", 0];
                    [_unit, "AnimCableCrouchToStand"] remoteExec ["playMove", 0];
                    uiSleep 2;
                    [_unit, ""] remoteExec ["switchMove", 0];
                    [_unit,"AnimCableStandEnd"] remoteExec ["playAction", 0];

                    // Random hand animation for player
                    _rHandAnim = selectRandom ["HandSignalMoveForward", "HandSignalGetUp"]; 
                    [_player, _rHandAnim] remoteExec ["playAction", 0];

                    uiSleep 1;

                    _unit allowFleeing 1;
                    [_unit, false] remoteExec ["setCaptive", 0];
                    _unit setUnitPos "AUTO";

                    // Adjust morale and trigger event
                    _NewVar = [(floor (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold * 2)), 0, CQB_Interactions_BaseMorale] call BIS_fnc_clamp;
                    _unit setVariable ["CBQ_Interactions_UnitMorale", _NewVar, true];
                    ["CBQ_Interactions_MoraleChanged", [_unit, _NewVar]] call CBA_fnc_localEvent;

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
        },
        nil,                                      // No parameters needed
        2000,                                      // Priority
        false,                                     
        false,                                     
        "",                                       // shortcut
        "((_this distance _originalTarget < 3) && (alive _originalTarget) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) && (!(_originalTarget getVariable ['CQB_IsbeingMoved', false])) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) && (!HasACELoaded || !(_this getVariable ['ace_captives_isEscorting', false])))",
        5,			// radius
        false,		// unconscious
        "",			// selection
        ""			// memoryPoint
        ]
        ] remoteExec ["addAction", 0]; 

        //Detain action (dead)
        // [_unit] call BIS_fnc_holdActionRemove;
        if (!isnil "CQB_DetainDeadBody_Interaction_Disable_Toggle" && {
        (!(CQB_DetainDeadBody_Interaction_Disable_Toggle))
        }) then {
            [ 
            _unit,            
            "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'> Secure (body)</t>",          
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",  
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",  
            "(!(alive _target) and (_this distance _target < 3)) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) and (!(_target getVariable ['CQB_IsArrested', false]) and (([(side _this), (side _target)] call BIS_fnc_sideIsEnemy) or ((str (side _target)) == 'CIV')))",       
            "_caller distance _target < 3",       
            {},              
            {},              
            {
                params ["_target", "_caller", "_actionId", "_arguments"]; // same as codeStart
                [_target] spawn {
                    params ["_unit"];

                    [_unit, "revive_secured"] remoteExec ["switchMove", 0];
                    [_unit, "revive_secured"] remoteExec ["playMove", 0];
                    _unit setVariable ["CQB_IsArrested", true, true];
                    [_unit] call BIS_fnc_holdActionRemove;
                };
            },     
            {},              
            [],              
            1,              
            2369,              
            true,             
            false             
            ] remoteExec ["BIS_fnc_holdActionAdd", 0];	
        };
    };


if (!isnil "CQB_MoveIntoVehicles_Interaction_Disable_Toggle" && { (!(CQB_MoveIntoVehicles_Interaction_Disable_Toggle)) }) then {
    
    // move captive into vehicle cargo action
    [_unit,
    [
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Move Captive into Vehicle</t>",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];

            // Find the nearest vehicle with available cargo space
            _nearVehicles = nearestObjects [_caller, ["Car", "Truck", "Tank", "Air"], 10];
            _vehicle = objNull;

            {
                if ((_x emptyPositions "cargo") > 0) exitWith {
                    _vehicle = _x;
                };
            } forEach _nearVehicles;

            if (isNull _vehicle) exitWith {
                ['',"There is No vehicle with available cargo space nearby..."] call BIS_fnc_showSubtitle;
            };

            // Detach the captive if they are being carried or moved
            if (_target getVariable ["CQB_IsbeingDragged", false] || _target getVariable ["CQB_IsbeingMoved", false]) then {
                detach _target;
                _target setVariable ["CQB_IsbeingDragged", false, true];
                _target setVariable ["CQB_IsbeingMoved", false, true];
                if (HasACELoaded) then {
                _caller setVariable ["ace_captives_isEscorting", false, true];
                _caller setVariable ["ace_captives_escortedUnit", objNull, true];
                };

                [_caller, ""] remoteExec ["switchMove",0];
            };

            // Move the captive into the vehicle's cargo
            if (HasACELoaded) then {
                [_target, _vehicle] call ACE_captives_fnc_vehicleCaptiveMoveIn;
            } else {
                _target moveInCargo _vehicle;
            };

            // Play an animation for the player
            _rHandAnim = selectRandom ["HandSignalMoveForward", "HandSignalGetUp"];
            [_caller, _rHandAnim] remoteExec ["playAction", 0];

            // Notify the player
            _displayName = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
            _text = format ["Captive has been moved into %1", _displayName];
            ['',_text] call BIS_fnc_showSubtitle;
        },
        nil,
        1500,
        true,
        false,
        "",
        "((_this distance2D _originalTarget < 3) && (alive _originalTarget) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) && (count nearestObjects [_this, ['Car', 'Truck', 'Tank', 'Air'], 10] > 0))", 
        5,
        false,
        "",
        ""
    ]] remoteExec ["addAction", 0];
};

if (!isnil "CQB_MoveCaptive_Interaction_Disable" && {
    (!(CQB_MoveCaptive_Interaction_Disable))
    }) then {

        //Moving captives
        [_unit,
        [
            "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Move Captive</t>",
            {
                params ["_target", "_caller", "_actionId", "_arguments"];

                _target setVariable ["CQB_IsbeingMoved", true, true];

                [_target, _caller] spawn {
                    params ["_unit","_player"];
                if (HasACELoaded) then {
                [_player, _unit, true] call ACE_captives_fnc_doEscortCaptive;
                _player setVariable ["ace_captives_isEscorting", true, true];
                _player setVariable ["ace_captives_escortedUnit", _unit, true];
                };

                // Random hand animation for player
                _rHandAnim = selectRandom ["HandSignalGetUp"]; 
                [_player, _rHandAnim] remoteExec ["playAction", 0];

                uiSleep 1;

                // [_player,"AcinPercMstpSrasWrflDnon"] remoteExec ["switchMove",0];
                [_player,""] remoteExec ["playAction", 0];

                // [_unit,"AinjPfalMstpSnonWrflDnon_carried_still"] remoteExec ["switchMove",0];
                [_unit,""] remoteExec ["switchMove", 0];
                _unit setUnitPos "UP";
                [_unit,"AnimCableStandLoop"] remoteExec ["playActionNow", 0];
                
                _unit attachTo [_player,[0,0.8,0]]; 
                [_unit,0] remoteExec ["setDir", 0];

                };
            },
            nil,
            1500,
            true,
            false,
            "",
            "((alive _target) and ( !((lifeState _target) == 'INCAPACITATED') or ((lifeState _target) == 'UNCONSCIOUS') or ((lifeState _target) == 'ASLEEP') ) and (_this distance2D _originalTarget < 3) && (alive _originalTarget) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (!(_originalTarget getVariable ['CQB_IsbeingMoved', false])) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) )", // _target, _this, _originalTarget
            5,
            false,
            "",
            ""
        ]] remoteExec ["addAction", 0];

        [_unit,
        [
            "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Let go of Captive</t>",
            {
                params ["_target", "_caller", "_actionId", "_arguments"];

                _target setVariable ["CQB_IsbeingMoved", false, true];
                _target setVariable ["CQB_IsbeingDragged", false, true];
                if (HasACELoaded) then {
                _caller setVariable ["ace_captives_isEscorting", false, true];
                _caller setVariable ["ace_captives_escortedUnit", objNull, true];
                };

                [_target, _caller] spawn {
                    params ["_unit","_player"];

                _rHandAnim = selectRandom [
                "HandSignalGetDown",
                "HandSignalHold",
                "HandSignalPoint"
                ];
                [_player, _rHandAnim] remoteExec ["playAction", 0];

                uiSleep 1;

                [_player,""] remoteExec ["playAction", 0];
                [_player,""] remoteExec ["switchMove", 0];

                {
                    if (_x isKindOf "MAN") then {

                        detach _x;

                        if ( ((lifeState _x) == "INCAPACITATED") or ((lifeState _x) == "UNCONSCIOUS") or ((lifeState _x) == "ASLEEP") ) then { 

                            [_x, "revive_secured"] remoteExec ["switchMove", 0];
                            [_x, "revive_secured"] remoteExec ["playMove", 0];

                        } else {

                            [_x, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                            [_x, "AnimCableCrouchStart"] remoteExec ["playMove", 0];

                            uiSleep 1;

                            _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                            [_x, _rAnim] remoteExec ["switchMove", 0];
                            [_x, _rAnim] remoteExec ["playMove", 0];

                            uiSleep 0.1;
                        };

                    };
                } forEach attachedObjects _player;

                [_player, ""] remoteExec ["switchMove", 0];

                };
            },
            nil,
            1450,
            false,
            false,
            "",
            " ( ({_x isKindOf 'MAN'} count attachedObjects _this > 0) && (alive _originalTarget) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (_originalTarget getVariable ['CQB_IsbeingMoved', false]) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) ) ", // _target, _this, _originalTarget
            10,
            false,
            "",
            ""
        ]] remoteExec ["addAction", 0];
    };

    if (!isnil "CQB_CarryCaptive_Interaction_Disable" && {
    (!(CQB_CarryCaptive_Interaction_Disable))
    }) then {

        //dragging captives
        [_unit,
        [
            "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Carry Captive</t>",
            {
                params ["_target", "_caller", "_actionId", "_arguments"];

                _target setVariable ["CQB_IsbeingDragged", true, true];
                if (HasACELoaded) then {
                _caller setVariable ["ace_captives_isEscorting", true, true];
                _caller setVariable ["ace_captives_escortedUnit", _target, true];
                };

                [_target, _caller] spawn {
                    params ["_unit","_player"];

                [_player,"AcinPercMstpSrasWrflDnon"] remoteExec ["switchMove",0];

                [_unit,"AinjPfalMstpSnonWrflDnon_carried_still"] remoteExec ["switchMove",0];
                [_unit,"AnimCableStandLoop"] remoteExec ["playActionNow", 0];
                
                _unit attachTo [_player,[-0.2,-0.16,-1.2],"spine3",true]; 
                [_unit,180] remoteExec ["setDir",0];

                };
            },
            nil,
            1500,
            true,
            false,
            "",
            "( (_this distance2D _originalTarget < 3) && (alive _originalTarget) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) && (!(_originalTarget getVariable ['CQB_IsbeingMoved', false])) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) )", // _target, _this, _originalTarget
            5,
            false,
            "",
            ""
        ]] remoteExec ["addAction", 0];

        [_unit,
        [
            "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'>Let go of Captive</t>",
            {
                params ["_target", "_caller", "_actionId", "_arguments"];

                _target setVariable ["CQB_IsbeingMoved", false, true];
                _target setVariable ["CQB_IsbeingDragged", false, true];
                if (HasACELoaded) then {
                _caller setVariable ["ace_captives_isEscorting", false, true];
                _caller setVariable ["ace_captives_escortedUnit", objNull, true];
                };

                [_target, _caller] spawn {
                    params ["_unit","_player"];

                [_player, "AcinPercMrunSrasWrflDf_AmovPercMstpSlowWrflDnon"] remoteExec ["switchMove",0];
                [_player, "AcinPercMrunSrasWrflDf_AmovPercMstpSlowWrflDnon"] remoteExec ["playMove",0];

                uiSleep 2;

                {
                    if (_x isKindOf "MAN") then {

                        detach _x;

                        if ( ((lifeState _x) == "INCAPACITATED") or ((lifeState _x) == "UNCONSCIOUS") or ((lifeState _x) == "ASLEEP") ) then { 

                            [_x, "revive_secured"] remoteExec ["switchMove", 0];
                            [_x, "revive_secured"] remoteExec ["playMove", 0];

                        } else {

                            [_x, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                            [_x, "AnimCableCrouchStart"] remoteExec ["playMove", 0];

                            uiSleep 1;

                            _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                            [_x, _rAnim] remoteExec ["switchMove", 0];
                            [_x, _rAnim] remoteExec ["playMove", 0];
                        };

                        uiSleep 0.1;
                    };
                } forEach attachedObjects _player;

                [_player, ""] remoteExec ["switchMove", 0];

                };
            },
            nil,
            1450,
            false,
            false,
            "",
            " ( ({_x isKindOf 'MAN'} count attachedObjects _this > 0) && (alive _originalTarget) && (_originalTarget getVariable ['CQB_IsArrested', false]) && (_originalTarget getVariable ['CQB_IsbeingDragged', false]) && (!(_originalTarget getVariable ['CQB_IsbeingMoved', false])) && (!(_originalTarget getVariable ['CQB_IsFollowing', false])) ) ", // _target, _this, _originalTarget
            10,
            false,
            "",
            ""
        ]] remoteExec ["addAction", 0];
    };
   
    if (!isnil "CQB_FollowOrder_Interaction_Disable" && {
    (!(CQB_FollowOrder_Interaction_Disable))
    }) then {
        // Follow
        [ 
        _unit,            
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'> Order 'Follow'!</t>",          
        "\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",  
        "\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",  
        "((alive _target) and ( !((lifeState _target) == 'INCAPACITATED') or ((lifeState _target) == 'UNCONSCIOUS') or ((lifeState _target) == 'ASLEEP') ) and (_this distance _target < 3) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) && (!(_originalTarget getVariable ['CQB_IsbeingMoved', false])) and (_target getVariable ['CQB_IsArrested', false]) and (!(_target getVariable ['CQB_IsFollowing', false])))",       
        "_caller distance _target < 3",       
        {},              
        {},              
        {
            _rHandAnim = selectRandom ["GestureFollow","HandSignalMoveForward","HandSignalGetUp","HandSignalGetUp"]; 
            [_caller, _rHandAnim] remoteExec ["playAction", 0];

            [_target, _caller] spawn {
                params ["_unit","_player"];
                _unit setVariable ["CQB_IsFollowing", true, true];
                if (HasACELoaded) then {
                        [_unit, false] call ACE_captives_fnc_setHandcuffed;
                        [_unit, false] call ACE_captives_fnc_setSurrendered;
                    };
                [_unit, "AnimCableCrouchToStand"] remoteExec ["switchMove", 0];
                [_unit, "AnimCableCrouchToStand"] remoteExec ["playMove", 0];
                uiSleep 2;
                [_unit, ""] remoteExec ["switchMove", 0];
                uiSleep 0.5;
                [_unit,"AnimCableStandLoop"] remoteExec ["playActionNow", 0];

                // doStop _unit;
                [_unit, "move"] remoteExec ["enableAI", 0, _unit];
                [_unit, "path"] remoteExec ["enableAI", 0, _unit];
                [_unit, "ANIM"] remoteExec ["enableAI", 0, _unit];

                // while { (_unit getVariable ['CQB_IsFollowing', false]) } do {

                //     _unit doMove (getPos _player);
                //     waitUntil {uiSleep 1; ( ((_player distance _unit) >= 5) or ( ((_player distance _unit) <= 5) and (!(_unit getVariable ['CQB_IsFollowing', false])) ) )};

                //     if (!(_unit getVariable ['CQB_IsFollowing', false])) then { break };
                // };

                _unit setRank "PRIVATE";      
                _unit setUnitRank "PRIVATE";
                [_unit] joinSilent (group _player);
                
                waitUntil {uiSleep 0.05; (!(_unit getVariable ['CQB_IsFollowing', false])) };

                uiSleep 1;

                [_unit, "AnimCableCrouchStart"] remoteExec ["switchMove", 0];
                [_unit, "AnimCableCrouchStart"] remoteExec ["playMove", 0];

                [_unit, "move"] remoteExec ["disableAI", 0, _unit];
                [_unit, "path"] remoteExec ["disableAI", 0, _unit];
                _unit setUnitPos "UP";
                [_unit, "ANIM"] remoteExec ["disableAI", 0, _unit];

                uiSleep 1;
                _rAnim = selectRandom ["AnimCableCrouchLoop","Acts_executionVictim_Loop"];
                [_unit, _rAnim] remoteExec ["switchMove", 0];
                [_unit, _rAnim] remoteExec ["playMove", 0];
            };

        },
        {},
        [],              
        1,              
        2400,              
        false,             
        false,
        false           
        ] remoteExec ["BIS_fnc_holdActionAdd", 0]; 

        //STOP Follow
        [ 
        _unit,            
        "<t color='#FFA500' size='1.0' shadow='1' font='PuristaBold'> Stop 'Follow' order!</t>",          
        "\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_stop_ca.paa",  
        "\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_stop_ca.paa",  
        "((alive _target) and ( !((lifeState _target) == 'INCAPACITATED') or ((lifeState _target) == 'UNCONSCIOUS') or ((lifeState _target) == 'ASLEEP') ) and  (_this distance _target < 3) && (!(_originalTarget getVariable ['CQB_IsbeingDragged', false])) and (_target getVariable ['CQB_IsArrested', false]) and (_target getVariable ['CQB_IsFollowing', false]))",       
        "_caller distance _target < 3",       
        {},              
        {},              
        {   
            _target setVariable ["CQB_IsFollowing", false, true];
            if (HasACELoaded) then {
                        [_target, true] call ACE_captives_fnc_setHandcuffed;
                        [_target, true] call ACE_captives_fnc_setSurrendered;
                    };
            _rHandAnim = selectRandom ["HandSignalFreeze","HandSignalGetDown","HandSignalGetDown","HandSignalHold"];
            [_caller, _rHandAnim] remoteExec ["playAction", 0];
            [_target] joinSilent grpNull;
        },
        {},
        [],              
        0.3,              
        2369,              
        false,             
        false,
        true             
        ] remoteExec ["BIS_fnc_holdActionAdd", 0]; 
    };

        //Trigger for the animation and action//
        
        //Condition:
        waitUntil {uiSleep 0.1; ( !(((lifeState _unit) == "INCAPACITATED") or ((lifeState _unit) == "UNCONSCIOUS") or ((lifeState _unit) == "ASLEEP")) and ((_unit getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale]) <= (CQB_Interactions_BaseMorale * CQB_Interactions_SurrenderThreshold)) and (isNull objectParent _unit) and !((str (side player) == "CIV") and (((currentWeapon player) == ""))) and ( ( ([(side player), (side _unit)] call BIS_fnc_sideIsEnemy) or (str (side _unit) == "CIV") )) and ((([objNull, "VIEW"] checkVisibility [eyePos player, eyePos _unit]) > 0) and ((player distance _unit) < CQB_Interactions_ShoutingDistance)) )};
        if ((isNull _unit) or !(alive _unit) or (_unit getVariable ["CQB_IsArrested", false])) exitWith {};

        //Activation:
        if  ((([objNull, "VIEW"] checkVisibility [eyePos player, eyePos _unit]) > 0) and ((player distance _unit) < CQB_Interactions_ShoutingDistance)) then { 
            uiSleep 2;
            _name = (name _unit);
            _curw = currentWeapon _unit;

            _unit spawn {

                [_this, true] remoteExec ["setRandomLip", 0, _this];
                uiSleep (selectRandom [1,3,5]);
                [_this, false] remoteExec ["setRandomLip", 0, _this];
            };

            if ((_curw == "") or ((primaryWeapon _unit == "") and (handgunWeapon _unit == "") and (secondaryWeapon _unit == "")) or ({getNumber (configFile/"CfgWeapons"/_x/"type") in [1,2,4,5]} count [primaryWeapon _unit, secondaryWeapon _unit, handgunWeapon _unit] == 0 )) then {

                _rText = selectRandom [
                "I Surrender!",
                "I surrender, I surrender!",
                "I surrender",
                "I am unarmed!",
                "I don't have a weapon!",
                "Don't shoot me, I surrender!",
                "Fuck! Don't shoot me I surrender!",
                "Shit! I surrender",
                "Do not hurt me, I beg you!",
                "I don't have a weapon!",
                "I have nothing to do with this!",
                "Please save me!",
                "Please help me!",
                "Don't Shoot!",
                "Don't Kill me!",
                "Don't Shoot me!",
                "I don't want to die!",
                "I am cooperating",
                "I'm putting my hands up",
                "I am not with them!",
                "Just stop pointing that weapon at me already!",
                "I am not the enemy!",
                "I am not the bad guy!",
                "Alright, just leave me alone",
                "I surrender! Please don't shoot!",
                "I'm just a civilian!",
                "I give up, please!",
                "Please, don't hurt me!",
                "I don't want any trouble!",
                "I'm innocent, don't shoot!",
                "I'm on your side!",
                "I'm not involved!",
                "Please, I have a family!",
                "Don't hurt me, I'm innocent!",
                "I'll do whatever you want!",
                "I'm scared, please don't shoot!",
                "Please don't hurt me, I surrender!",
                "I'm not a threat!",
                "Stop! I'm surrendering!",
                "Don't kill me, I'm unarmed!",
                "I'm harmless, don't shoot!",
                "No, no, I give up!",
                "I'm innocent! Please!",
                "I have nothing to hide!",
                "Alright, alright, you got me!",
                "Please, I'm not dangerous!",
                "Please spare me!",
                "I'm just a bystander!"                
                ];
                [_name, _rText] remoteExec ["BIS_fnc_showSubtitle", 0];

            } else {

                _rText = selectRandom [
                "I Surrender!",
                "I give up!",
                "You got me.",
                "Alright, I'm dropping my weapon",
                "Okay- okay, I'm Dropping the weapon.", 
                "I'm dropping it!",
                "I'm done.",
                "Okay, okay, I'm dropping my weapon!",
                "Don't shoot, I'll drop my weapon!",
                "Alright, I'm putting it down!",
                "No more shooting, I surrender!",
                "Don't kill me, I give up!",
                "Okay, I'm dropping it, just don't shoot!",
                "Fine, fine, I'm laying it down!",
                "I'm not going to fight, I'm done!",
                "I'll drop my weapon, don't shoot!",
                "I give up, I'm laying down my weapon!",
                "I'm done fighting, don't hurt me!",
                "Okay, I'm surrendering, here's my weapon!",
                "You win, I'm putting down my weapon!",
                "Alright, no more, I give up!",
                "Don't kill me, I surrender. My weapon is down!",
                "Alright! I'm done! My weapon's on the ground!",
                "I don't want to die, here's my weapon!",
                "I'm putting it down, don't shoot!",
                "You got me! I'm surrendering!"                
                ];
                [_name, _rText] remoteExec ["BIS_fnc_showSubtitle", 0];
            };   
        };

        [_unit, "autotarget"] remoteExec ["disableAI", 0, _unit];
        [_unit, "ANIM"] remoteExec ["disableAI", 0, _unit];
        [_unit, "move"] remoteExec ["disableAI", 0, _unit];
        [_unit, "path"] remoteExec ["disableAI", 0, _unit];
        _unit setUnitPos "UP";

        [_unit, "Animweaponsurrender"] remoteExec ["switchMove", 0];
        [_unit, "Animweaponsurrender"] remoteExec ["playMove", 0];
        uiSleep 1;
        [_unit, "Animweaponsurrenderdrop"] remoteExec ["switchMove", 0];
        [_unit, "Animweaponsurrenderdrop"] remoteExec ["playMove", 0];
        uiSleep 1;
        [_unit] remoteExec ["removeAllWeapons", 0, _unit];
        uiSleep 1;
        [_unit, "AnimNoweaponsurrenderLoop"] remoteExec ["switchMove", 0];
        [_unit, "AnimNoweaponsurrenderLoop"] remoteExec ["playMove", 0];

        _unit setVariable ["CBQ_Interactions_AbleToBeArrested", true, true];
        if (HasACELoaded) then {
        [_unit, true] call ACE_captives_fnc_setSurrendered;
        };
};
