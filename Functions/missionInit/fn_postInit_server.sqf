/*
* Author: Zorn
* Post Init Function for the Server to set up some stuff
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

{ _x call mission_fnc_setup_trigger_sam; } forEach [ "sam_launcher_1", "sam_launcher_2", "sam_launcher_3", "sam_launcher_4", "sam_launcher_5", "sam_launcher_6", "sam_radar_1", "sam_radar_2" ];


{ ["cba_event_aceAction_wirecutting", _x] call CBA_fnc_globalEventJIP; } forEach (getMissionLayerEntities "backup_poles" select 0);

