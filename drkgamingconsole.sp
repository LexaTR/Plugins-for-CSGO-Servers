#pragma semicolon 1
#include <sourcemod>
#include <sdktools>
#include <cstrike>

#define PLUGIN_VERSION "1.0"


public Plugin:myinfo =
{
	name        = "TEST",
	author      = "ImPossibLe`",
	description = "DrK # GaminG",
	version     = PLUGIN_VERSION,
};

public OnPluginStart() 
{
	RegAdminCmd("sm_test", testt, ADMFLAG_GENERIC);
}
public Action:testt(client, args)
{
	PrintToConsole(client, "────────────────────────────────────────────────────");
	PrintToConsole(client, "─████████████───████████████████───██████──████████─");
	PrintToConsole(client, "─██░░░░░░░░████─██░░░░░░░░░░░░██───██░░██──██░░░░██─");
	PrintToConsole(client, "─██░░████░░░░██─██░░████████░░██───██░░██──██░░████─");
	PrintToConsole(client, "─██░░██──██░░██─██░░██────██░░██───██░░██──██░░██───");
	PrintToConsole(client, "─██░░██──██░░██─██░░████████░░██───██░░██████░░██───");
	PrintToConsole(client, "─██░░██──██░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██───");
	PrintToConsole(client, "─██░░██──██░░██─██░░██████░░████───██░░██████░░██───");
	PrintToConsole(client, "─██░░██──██░░██─██░░██──██░░██─────██░░██──██░░██───");
	PrintToConsole(client, "─██░░████░░░░██─██░░██──██░░██████─██░░██──██░░████─");
	PrintToConsole(client, "─██░░░░░░░░████─██░░██──██░░░░░░██─██░░██──██░░░░██─");
	PrintToConsole(client, "─████████████───██████──██████████─██████──████████─");
	PrintToConsole(client, "────────────────────────────────────────────────────");
	PrintToConsole(client, "───────────────────────────────────────────────────────────────────────────────────────────────────────");
	PrintToConsole(client, "─██████████████─██████████████─██████──────────██████─██████████─██████──────────██████─██████████████─");
	PrintToConsole(client, "─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████████░░██─██░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─");
	PrintToConsole(client, "─██░░██████████─██░░██████░░██─██░░░░░░░░░░░░░░░░░░██─████░░████─██░░░░░░░░░░██──██░░██─██░░██████████─");
	PrintToConsole(client, "─██░░██─────────██░░██──██░░██─██░░██████░░██████░░██───██░░██───██░░██████░░██──██░░██─██░░██─────────");
	PrintToConsole(client, "─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██─────────");
	PrintToConsole(client, "─██░░██──██████─██░░░░░░░░░░██─██░░██──██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██──██████─");
	PrintToConsole(client, "─██░░██──██░░██─██░░██████░░██─██░░██──██████──██░░██───██░░██───██░░██──██░░██──██░░██─██░░██──██░░██─");
	PrintToConsole(client, "─██░░██──██░░██─██░░██──██░░██─██░░██──────────██░░██───██░░██───██░░██──██░░██████░░██─██░░██──██░░██─");
	PrintToConsole(client, "─██░░██████░░██─██░░██──██░░██─██░░██──────────██░░██─████░░████─██░░██──██░░░░░░░░░░██─██░░██████░░██─");
	PrintToConsole(client, "─██░░░░░░░░░░██─██░░██──██░░██─██░░██──────────██░░██─██░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─");
	PrintToConsole(client, "─██████████████─██████──██████─██████──────────██████─██████████─██████──────────██████─██████████████─");
	PrintToConsole(client, "───────────────────────────────────────────────────────────────────────────────────────────────────────");
	
	return Plugin_Continue;
}