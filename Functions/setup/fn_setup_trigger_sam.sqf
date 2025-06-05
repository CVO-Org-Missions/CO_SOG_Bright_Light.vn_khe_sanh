/*
* Author: Zorn
* Function to create a trigger on an objects position.
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

if !(isServer) exitWith {};

params [
    ["_varName", "", [""] ]
];

if (isNil _varName) exitWith {};

private _obj = missionNamespace getVariable [_varName, objNull];

if (isNull _obj) exitWith {};

// Setup Trigger for detection of SAM Objects
private _trigger_detected_varName = format ["trigger_detected_%1", _varName];

private _trg = createTrigger ["EmptyDetector", getPos _obj];
_trg setTriggerActivation ["WEST", "PRESENT", false];
_trg setTriggerArea [25,25,0, false];
_trg setTriggerInterval 5;
_trg setTriggerStatements [
    "this",
    format ["missionNamespace setVariable ['%1', true, true]", _trigger_detected_varName ],
    ""
];



// Setup wuae-trigger for the objects destruction
[
    {
        missionNamespace getVariable [_this#1, false]
    },
    {
        params ["_varName", "", "_obj"];


        [
            {
                damage (_this#1) > 0.8
            },
            {
                missionNamespace setVariable [ format ["trigger_destroyed_%1", _this#0, true] ]
            },
            [_varName,_obj]
        ] call CBA_fnc_waitUntilAndExecute;
    },
    [_varName, _trigger_detected_varName, _obj]
] call CBA_fnc_waitUntilAndExecute;