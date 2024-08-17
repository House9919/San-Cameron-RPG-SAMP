# San Cameron RPG - SAMP
A San Cameron RPG egy 2023 és 2024 között készülő RP szerver volt, viszont nem került befejezésre. Ennek egyik oka az időhiány, másik oka pedig az, hogy a mod, amire ezt építettük ([South Central Roleplay](https://github.com/seanny/SC-RP)) elég sok hibával rendelkezett, amikből jó párat még most sem sikerült kijavítani.\
A játékmód körülbelül 95%-ban került lefordításra, pár adminparancs maradt hátra.\
Ettől függetlenül **nem ajánljuk** senkinek sem a mod publikus használatát ebben az állapotában.

## Telepítés és futtatás
### Linux
A repó klónozása vagy forkolása után az első dolog átírni a MySQL adatbázis adatait a **roleplay.pwn** elején:
```pawn
#define SQL_HOSTNAME "127.0.0.1"
#define SQL_USERNAME "név"
#define SQL_DATABASE "adatbázis neve"
#define SQL_PASSWORD "jelszó"
```
Majd az **scrpg.sql** adatait importálni szükséges egy MySQL adatbázisba.\

Ezután a szerver elindítható állapotban lesz webadminon keresztül, vagy pedig a következő paranccsal:
```bash
./samp03svr
```

### Windows
Az első dolog a **server.cfg** fájl **plugin** sorának átírása a következőre:
```
plugins crashdetect sscanf mysql streamer Whirlpool YSF nativechecker
```

Majd itt is szükséges egy MySQL adatbázis létrehozása (akár lokálisan, [XAMPP](https://www.apachefriends.org/hu/index.html) segítségével, vagy pedig egy hostot használva).\
Az **scrpg.sql** importálása után itt is szükséges átírni a **roleplay.pwn** fájlban található MySQL adatokat:
```pawn
#define SQL_HOSTNAME "127.0.0.1"
#define SQL_USERNAME "név"
#define SQL_DATABASE "adatbázis neve"
#define SQL_PASSWORD "jelszó"
```
Ennek végeztél a szerver futtatható a **samp-server.exe** használatával.\

## Készítők
- Emmett, Apple - A South Central Roleplay eredeti fejlesztői
- Risky - A South Central Roleplay eredeti tulajdonosa
- [Dark](https://github.com/DarkSCRPG) - A San Cameron RPG tulajdonosa, mappere és fordítója
- [House9919](https://github.com/House9919) - A San Cameron RPG fejlesztője

## Megjegyzés
A játékmódhoz map nem tartozik (az alap South Centralos mappolások is ki lettek véve).\
Ha bármi egyéb kérdésed lenne, nyugodtan keress fel Discordon: **house9919**

## Licensz
A játékmód a Creative Commons Attribution-NonCommercial licenszt használja.
Részletesebben [itt](https://creativecommons.org/licenses/by-nc/4.0/deed.hu).
