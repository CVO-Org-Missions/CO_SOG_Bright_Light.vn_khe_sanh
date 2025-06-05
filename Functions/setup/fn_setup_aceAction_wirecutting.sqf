/*
* Author: Zorn
* Function to create a ace Action on the object to trigger something.
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/


params ["_object"];

private _state = {
    params ["_target", "_player", "_actionParams"];
    _actionParams params [""];
    
    missionNamespace setVariable ["mission_cutting_loop", true];

    [
        45                      // * 0: Total Time (in game "time" seconds) <NUMBER>
        ,[_target]                     // * 1: Arguments, passed to condition, fail and finish <ARRAY>
        // * 2: On Finish: Code called or STRING raised as event. <CODE, STRING>
        ,{
            params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
            _args params ["_target"];
            missionNamespace setVariable ["trigger_wire_cut", true, true];
            missionNamespace setVariable ["mission_cutting_loop", false];

            { deleteVehicle _x } forEach nearestObjects [_target,["Land_TelephoneLine_01_wire_50m_main_F"], 30];

            createVehicle ["Helper_Base_F", getPos _target, [], 0, "CAN_COLLIDE"];
            
            }
        // * 3: On Failure: Code called or STRING raised as event. <CODE, STRING>
        ,{
            missionNamespace setVariable ["mission_cutting_loop", false];
        }   
        ,"You're climbing the pole to cut the wire..."                     // * 4: Localized Title <STRING> (default: "")
    //    ,{true}                 // * 5: Code to check each frame <CODE> (default: {true})
    //    ,[]                     // * 6: Exceptions for checking ace_common_fnc_canInteractWith <ARRAY> (default: [])
    //    ,true                   // * 7: Create progress bar as dialog, this blocks user input <BOOL> (default: true)

    ] call ace_common_fnc_progressBar;



    /*
    _codeToRun  - <CODE> code to Run stated between {}
    _parameters - <ANY> OPTIONAL parameters, will be passed to  code to run, exit code and condition
    _exitCode   - <CODE> OPTIONAL exit code between {} code that will be executed upon ending PFEH default is {}
    _condition  - <CODE THAT RETURNS BOOLEAN> - OPTIONAL conditions during which PFEH will run default {true}
    _delay      - <NUMBER> (optional) delay between each execution in seconds, PFEH executes at most once per frame
    */
    
    private _codeToRun = {  playSound3D ["z\ace\addons\logistics_wirecutter\sound\wirecut.ogg", _this#0, false, getPosASL (_this#0), 3, 1, 20];  };
    private _parameters = [  _player  ];
    private _exitCode = { /* exit code */ };
    private _condition = { missionNamespace getVariable ["mission_cutting_loop", false]; };
    private _delay = 2;
    
    [{
        params ["_args", "_handle"];
        _args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];
    
        if (_parameters call _condition) then {
            _parameters call _codeToRun;
        } else {
            _handle call CBA_fnc_removePerFrameHandler;
            _parameters call _exitCode;
        };
    }, _delay, [_codeToRun, _parameters, _exitCode, _condition]] call CBA_fnc_addPerFrameHandler;


    

};

private _cond = {
    params ["", "_player", ""];
    !(missionNamespace getVariable ["trigger_wire_cut", false]) && { [_player, "ACE_wirecutter"] call BIS_fnc_hasItem }
};

private _aceAction = [
    "My_Action_ID_Name"                     // * 0: Action name <STRING>
    ,"Climb and cut the Cables"             //  * 1: Name of the action shown in the menu <STRING>
    ,""                                     //  * 2: Icon <STRING> "\A3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa"
    ,_state                                 //  * 3: Statement <CODE>
    ,_cond                                  //  * 4: Condition <CODE>
    ,{}                                     //  * 5: Insert children code <CODE> (Optional)
    ,[]                                     //  * 6: Action parameters <ANY> (Optional)
    ,[0,0,0]                                //  * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
    ,20                                     //  * 8: Distance <NUMBER> (Optional)
//    ,[false,false,false,false,false]      //  * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
//    ,{}                                   //  * 10: Modifier function <CODE> (Optional)
] call ace_interact_menu_fnc_createAction;


[
    _object                    		// * 0: Object the action should be assigned to <OBJECT>
    ,0                         		    // * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
    ,["ACE_MainActions"]             	// * 2: Parent path of the new action <ARRAY> (Example: ["ACE_SelfActions", "ACE_Equipment"])
    ,_aceAction    	         			// * 3: Action <ARRAY>    
] call ace_interact_menu_fnc_addActionToObject;