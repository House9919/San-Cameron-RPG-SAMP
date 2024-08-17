//------------------------------------------------------------------------------
// Ez a függvénykönyvtár jaívtja a hibás magyar karaktereket a képerny?re megje-
// len? szövegekben (lásd GameText,TextDraw stb), tesztelve lett, és m?ködik.
//
// Készítette Gamestar 2010/JAN/20
// FRISSÍTVE 2010 FEBRUÁR 28
//------------------------------------------------------------------------------

#include <a_samp>
#include <streamer>

#tryinclude <YSI\YSI_Players\y_android>

static chlist[][0]={
	"¨","‘","ö","Ö",
    "¬","•","ü","Ü",
 	"¦","","ó","Ó",
 	"§","","õ","Õ",
 	"ª","“","ú","Ú",
 	"","‡","é","É",
 	"˜","","á","Á",
	"«","·","û","û",
	"¢","‹","í","Í"
};

stock fixchars_GameTextForPlayer(playerid, const text[], time, style)
{
    if (GetPVarInt(playerid, "android") == 0)
        return GameTextForPlayer(playerid, FixGameString(text), time, style);
    else
        return GameTextForPlayer(playerid, FixAndroidString(text), time, style);
}
#define GameTextForPlayer fixchars_GameTextForPlayer

//*******************

stock fixchars_GameTextForAll(const text[], time, style)
{
    return GameTextForAll(FixGameString(text), time, style);
}
#define GameTextForAll fixchars_GameTextForAll


//*******************

stock Text:fixchars_TextDrawCreate(Float:x, Float:y, const text[])
{
    return TextDrawCreate(x, y, FixGameString(text));
}
#define TextDrawCreate fixchars_TextDrawCreate

//*******************

stock Menu:fixchars_CreateMenu(const title[], columns, Float:x, Float:y, Float:col1width, Float:col2width = 0.0)
{
    return CreateMenu(FixGameString(title), columns, x, y, col1width, col2width);
}
#define CreateMenu fixchars_CreateMenu

//*******************

stock fixchars_SetMenuColumnHeader(Menu:menuid, column, const columnheader[])
{
    return SetMenuColumnHeader(menuid, column, FixGameString(columnheader));
}
#define SetMenuColumnHeader fixchars_SetMenuColumnHeader

//*******************

stock fixchars_AddMenuItem(Menu:menuid, column, const menutext[])
{
    return AddMenuItem(menuid, column, FixGameString(menutext));
}
#define AddMenuItem fixchars_AddMenuItem

//*******************

stock fixchars_TextDrawSetString(Text:text, const string[])
{
    return TextDrawSetString(text, FixGameString(string));
}
#define TextDrawSetString fixchars_TextDrawSetString

//*******************



//*******************
stock fixchars_SendClientMessage(playerid, color, const message[])
{
    if (GetPVarInt(playerid, "android") == 1)
	    return SendClientMessage(playerid, color, FixAndroidString(message));
    else
        return SendClientMessage(playerid, color, message);
}
#define SendClientMessage fixchars_SendClientMessage

//******************



//*******************
stock FixGameString(const string[])
{
    // Tárolók létrehozása
    new index, dest[256];

    // Karakterlánc átmásolása
    strmid(dest, string, 0, strlen(string), sizeof dest);

    // Végiglépkedünk a karaktereken
    for (index = 0; index < strlen(dest); index++)
    {
        // Végiglépkedünk a karaktertömbön
        for (new idx = 0; idx < sizeof(chlist); idx++)
        {
            // Ha az indexelt karakterek egyeznek
            if (dest[index] == chlist[idx][0])
            {
                // Javítjuk
                dest[index] = chlist[idx - 2][0];
            }
        }
    }

    // Visszatérés
    return dest;
}

stock FixAndroidString(const string[])
{
    // Tárolók létrehozása
    new index, dest[512];

    // Karakterlánc átmásolása
    strmid(dest, string, 0, strlen(string), sizeof dest);

    for (index = 0; index < strlen(dest); index++)
    {
        // Megnézzük, hogy a karakter ékezetes-e
        switch (dest[index])
        {
            // Kisbetûsek kicserélése ékezetmentesre
            case 'á': {dest[index] = 'a'; continue;}
            case 'é': {dest[index] = 'e'; continue;}
            case 'í': {dest[index] = 'i'; continue;}
            case 'ó': {dest[index] = 'o'; continue;}
            case 'ú': {dest[index] = 'u'; continue;}
            case 'õ': {dest[index] = 'o'; continue;}
            case 'û': {dest[index] = 'u'; continue;}
            case 'ö': {dest[index] = 'o'; continue;}
            case 'ü': {dest[index] = 'u'; continue;}

            // Nagybetûsek kicserélése ékezetmentesre
            case 'Á': {dest[index] = 'A'; continue;}
            case 'É': {dest[index] = 'E'; continue;}
            case 'Í': {dest[index] = 'I'; continue;}
            case 'Ó': {dest[index] = 'O'; continue;}
            case 'Ú': {dest[index] = 'U'; continue;}
            case 'Õ': {dest[index] = 'O'; continue;}
            case 'Û': {dest[index] = 'U'; continue;}
            case 'Ö': {dest[index] = 'O'; continue;}
            case 'Ü': {dest[index] = 'U'; continue;}
        }
    }

    // Visszatérés
    return dest;
}