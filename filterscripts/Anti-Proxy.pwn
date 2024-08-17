// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#pragma warning disable 239

#include <a_samp>
#include <a_http>
#include <YSI\YSI_Coding\y_hooks>
#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("        Anti Proxy by Gnikllort         ");
	print("          Edited by House9919           ");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

forward MyHttpResponse(playerid, response_code, data[]);



hook OnPlayerConnect(playerid){
	new ip[16], string[256];
	GetPlayerIp(playerid, ip, sizeof ip);
 	format(string, sizeof string, "www.ip-api.com/json/%s?fields=proxy,hosting", ip);
  	HTTP(playerid, HTTP_GET, string, "", "MyHttpResponse");
	return 1;
}

public MyHttpResponse(playerid, response_code, data[])
{
    if(strfind(data, "true", true) != -1)
    {
   	    SendClientMessage(playerid, 0xFF0000FF, "Disable your VPN and rejoin!");
   	    SetTimerEx("DelayedKick", 100, false, "i", playerid);
	}
	else
	{
		SendClientMessage(playerid, 0xFF0000FF, "You have no VPN!");
	}
	return 1;
}

forward DelayedKick(playerid);
public DelayedKick(playerid)
{
    Kick(playerid);
    return 1;
}


#endif