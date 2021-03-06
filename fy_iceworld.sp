#pragma semicolon 1
#include <sourcemod>
#include <sdktools>
#include <cstrike>

#define PLUGIN_VERSION "1.0"

public Plugin:myinfo =
{
	name        = "Iceworld Bomba Yasaklayıcı",
	author      = "ImPossibLe`",
	description = "DrK # GaminG",
	version     = PLUGIN_VERSION,
};

new const String:FULL_SOUND_PATH[] = "sound/misc/drkozelses/nahalirsinyavrummm.mp3";
new const String:RELATIVE_SOUND_PATH[] = "*/misc/drkozelses/nahalirsinyavrummm.mp3";

public OnMapStart()
{
	AddFileToDownloadsTable( FULL_SOUND_PATH );
	FakePrecacheSound( RELATIVE_SOUND_PATH );
}

stock FakePrecacheSound( const String:szPath[] )
{
	AddToStringTable( FindStringTable( "soundprecache" ), szPath );
}


public OnPluginStart() 
{
	int ips[4];
	char serverip[32];
	int ip = GetConVarInt(FindConVar("hostip"));
	ips[0] = (ip >> 24) & 0x000000FF;
	ips[1] = (ip >> 16) & 0x000000FF;
	ips[2] = (ip >> 8) & 0x000000FF;
	ips[3] = ip & 0x000000FF;
	
	Format(serverip, sizeof(serverip), "%d.%d.%d", ips[0], ips[1], ips[2]);
	if(StrEqual(serverip, "185.188.144") == false || ips[3] < 2 || ips[3] > 129)
	{
		LogError("Bu plugin ImPossibLe` tarafindan lisanslandigi icin bu serverda calistirilmadi.");
		PrintToChatAll(" \x04Bu plugin \x02ImPossibLe` \x04tarafından lisanslandığı için bu serverda çalıştırılmadı.");
		SetFailState("Plugin Copyright by ImPossibLe`");
	}
}

public Action:CS_OnBuyCommand(client, const String:weapon[])
{
	if(StrEqual(weapon, "flashbang", false))
	{
		decl String:mapName[64];
		GetCurrentMap(mapName, sizeof(mapName));
		if(StrEqual(mapName, "fy_iceworld", false))
		{
			EmitSoundToClient( client, RELATIVE_SOUND_PATH );
			PrintToChat(client, " \x02[DrK # GaminG] \x04Iceworld\x10'de \x02flash \x10yasaklanmıştır. \x07Nah alırsın yavruum :))");
			return Plugin_Handled;
		}
	}
	if(StrEqual(weapon, "smokegrenade", false))
	{
		decl String:mapName[64];
		GetCurrentMap(mapName, sizeof(mapName));
		if(StrEqual(mapName, "fy_iceworld", false))
		{
			EmitSoundToClient( client, RELATIVE_SOUND_PATH );
			PrintToChat(client, " \x02[DrK # GaminG] \x04Iceworld\x10'de \x02smoke \x10yasaklanmıştır. \x07Nah alırsın yavruum :))");
			return Plugin_Handled;
		}
	}
	return Plugin_Continue;
}