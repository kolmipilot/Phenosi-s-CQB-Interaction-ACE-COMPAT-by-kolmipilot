removeMissionEventHandler ["Draw3D",missionNamespace getVariable ["drawHandler",-1]];

wh_nt_fnc_getZoom = {
    (
        [0.5,0.5] 
        distance2D  
        worldToScreen 
        positionCameraToWorld 
        [0,3,4]
    ) * (
        getResolution 
        select 5
    ) / 2
};

drawHandler = addMissionEventHandler ["Draw3D", {
	_target = cursorObject;
	_player = player;
	
    _targetPosition = _target modelToWorldVisual[0,0,1.3];
    _playerPosition = positionCameraToWorld[0,0,0];
    
	_distance = _targetPosition distance _playerPosition;
    
	_fov = call wh_nt_fnc_getZoom;
	
    _dir = _targetPosition vectorDiff _playerPosition;
    
    _playerDir = _playerPosition vectorFromTo positionCameraToWorld[0,0,1];
    
    _cross = (_playerDir) vectorCrossProduct (vectorUp _player);
    
    _drawUpNormal = vectorNormalized (_cross vectorCrossProduct _dir); 
    
    _drawUp = _drawUpNormal vectorMultiply (0.01 * _distance / _fov);
    
    _drawDown = _drawUp vectorMultiply -1;

    _drawPosUp = _targetPosition vectorAdd _drawUp;
	_drawPosDown=_targetPosition vectorAdd _drawDown;
	
    drawLine3D [_targetPosition, _drawPosUp, [1,0,0,1]];
    drawLine3D [_targetPosition, _playerPosition, [0,1,0,1]];    
    drawLine3D [_targetPosition, _targetPosition vectorAdd _cross, [0,0,1,1]];
    _targetMorale = _target getVariable ["CBQ_Interactions_UnitMorale", CQB_Interactions_BaseMorale];
    _moraleCheckUsed = _target getVariable ["CBQ_Interactions_CQB_Interactions_Fnc_MoraleCheck_Used", false];
	drawIcon3D ["", [1,1,1,1], _drawPosUp, 0, 0, 0, name _target, 2, 0.04, "RobotoCondensed"];
    drawIcon3D ["", [1,1,1,1], _targetPosition, 0, 0, 0, str _targetMorale, 2, 0.04, "RobotoCondensed"];
	drawIcon3D ["", [1,1,1,1], _drawPosDown, 0, 0, 0, str _moraleCheckUsed, 2, 0.04, "RobotoCondensed"];
}];