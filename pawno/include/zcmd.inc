#if defined _zcmd_included
	#endinput
#endif
#define _zcmd_included

#define MAX_FUNC_NAME (32)

#define COMMAND:%1(%2)          \
			forward cmd_%1(%2); \
			public cmd_%1(%2)

#define CMD:%1(%2) \
			COMMAND:%1(%2)

#define command(%1,%2,%3) \
			COMMAND:%1(%2, %3)

#define cmd(%1,%2,%3) \
			COMMAND:%1(%2, %3)

#if !defined isnull
	#define isnull(%1) \
				((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif


forward OnPlayerCommandReceived(playerid, cmdtext[]);
forward OnPlayerCommandPerformed(playerid, cmdtext[], success);


static
	bool:zcmd_g_HasOPCS = false,
	bool:zcmd_g_HasOPCE = false;


public OnFilterScriptInit()
{
	zcmd_g_HasOPCS = funcidx("OnPlayerCommandReceived") != -1;
	zcmd_g_HasOPCE = funcidx("OnPlayerCommandPerformed") != -1;
    return CallLocalFunction("zcmd_OnFilterScriptInit", "");
}

#if defined _ALS_OnFilterScriptInit
    #undef OnFilterScriptInit
#else
    #define _ALS_OnFilterScriptInit
#endif
#define OnFilterScriptInit zcmd_OnFilterScriptInit
forward zcmd_OnFilterScriptInit();

public OnGameModeInit()
{
	zcmd_g_HasOPCS = funcidx("OnPlayerCommandReceived") != -1;
	zcmd_g_HasOPCE = funcidx("OnPlayerCommandPerformed") != -1;
	if (funcidx("zcmd_OnGameModeInit") != -1)
	{
		return CallLocalFunction("zcmd_OnGameModeInit", "");
	}
	return 1;
}

#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit zcmd_OnGameModeInit
forward zcmd_OnGameModeInit();

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (zcmd_g_HasOPCS && !CallLocalFunction("OnPlayerCommandReceived", "is", playerid, cmdtext))
    {
        return 1;
    }
    new
        pos,
        funcname[MAX_FUNC_NAME] = "cmd_";
   	while (cmdtext[++pos] > ' ')
	{
		switch (cmdtext[pos])
		{
			case '�','�': funcname[pos+3] = 'a';
			case '�','�': funcname[pos+3] = 'e';
			case '�','�': funcname[pos+3] = 'i';
			case '�','�','�','�','�','�': funcname[pos+3] = 'o';
			case '�','�','�','�','�','�': funcname[pos+3] = 'u';
			default: funcname[pos+3] = tolower(cmdtext[pos]);
		}
	}
	while (cmdtext[pos] == ' ') pos++;
	if (!cmdtext[pos])
	{
		if (zcmd_g_HasOPCE)
		{
			return CallLocalFunction("OnPlayerCommandPerformed", "isi", playerid, cmdtext, CallLocalFunction(funcname, "is", playerid, "\1"));
		}
		return CallLocalFunction(funcname, "is", playerid, "\1");
	}
	if (zcmd_g_HasOPCE)
	{
		return CallLocalFunction("OnPlayerCommandPerformed", "isi", playerid, cmdtext, CallLocalFunction(funcname, "is", playerid, cmdtext[pos]));
	}
	return CallLocalFunction(funcname, "is", playerid, cmdtext[pos]);
}

#if defined _ALS_OnPlayerCommandText
    #undef OnPlayerCommandText
#else
    #define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText zcmd_OnPlayerCommandText
forward zcmd_OnPlayerCommandText(playerid, cmdtext[]);
