/*
* Author: Zorn
* Post Init Function for Everyone
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


if !(hasInterface) exitWith {};

["cba_event_aceAction_wirecutting", mission_fnc_setup_aceAction_wirecutting ] call CBA_fnc_addEventHandler;