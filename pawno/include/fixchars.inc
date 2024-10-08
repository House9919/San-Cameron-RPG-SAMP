//------------------------------------------------------------------------------
// Ez a f�ggv�nyk�nyvt�r ja�vtja a hib�s magyar karaktereket a k�perny?re megje-
// len? sz�vegekben (l�sd GameText,TextDraw stb), tesztelve lett, �s m?k�dik.
//
// K�sz�tette Gamestar 2010/JAN/20
// FRISS�TVE 2010 FEBRU�R 28
//------------------------------------------------------------------------------

#include <a_samp>
#include <streamer>

#tryinclude <YSI\YSI_Players\y_android>

static chlist[][0]={
	"�","�","�","�",
    "�","�","�","�",
 	"�","�","�","�",
 	"�","�","�","�",
 	"�","�","�","�",
 	"�","�","�","�",
 	"�","�","�","�",
	"�","�","�","�",
	"�","�","�","�"
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
    // T�rol�k l�trehoz�sa
    new index, dest[256];

    // Karakterl�nc �tm�sol�sa
    strmid(dest, string, 0, strlen(string), sizeof dest);

    // V�gigl�pked�nk a karaktereken
    for (index = 0; index < strlen(dest); index++)
    {
        // V�gigl�pked�nk a karaktert�mb�n
        for (new idx = 0; idx < sizeof(chlist); idx++)
        {
            // Ha az indexelt karakterek egyeznek
            if (dest[index] == chlist[idx][0])
            {
                // Jav�tjuk
                dest[index] = chlist[idx - 2][0];
            }
        }
    }

    // Visszat�r�s
    return dest;
}

stock FixAndroidString(const string[])
{
    // T�rol�k l�trehoz�sa
    new index, dest[512];

    // Karakterl�nc �tm�sol�sa
    strmid(dest, string, 0, strlen(string), sizeof dest);

    for (index = 0; index < strlen(dest); index++)
    {
        // Megn�zz�k, hogy a karakter �kezetes-e
        switch (dest[index])
        {
            // Kisbet�sek kicser�l�se �kezetmentesre
            case '�': {dest[index] = 'a'; continue;}
            case '�': {dest[index] = 'e'; continue;}
            case '�': {dest[index] = 'i'; continue;}
            case '�': {dest[index] = 'o'; continue;}
            case '�': {dest[index] = 'u'; continue;}
            case '�': {dest[index] = 'o'; continue;}
            case '�': {dest[index] = 'u'; continue;}
            case '�': {dest[index] = 'o'; continue;}
            case '�': {dest[index] = 'u'; continue;}

            // Nagybet�sek kicser�l�se �kezetmentesre
            case '�': {dest[index] = 'A'; continue;}
            case '�': {dest[index] = 'E'; continue;}
            case '�': {dest[index] = 'I'; continue;}
            case '�': {dest[index] = 'O'; continue;}
            case '�': {dest[index] = 'U'; continue;}
            case '�': {dest[index] = 'O'; continue;}
            case '�': {dest[index] = 'U'; continue;}
            case '�': {dest[index] = 'O'; continue;}
            case '�': {dest[index] = 'U'; continue;}
        }
    }

    // Visszat�r�s
    return dest;
}