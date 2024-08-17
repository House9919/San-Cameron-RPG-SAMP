-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2024. Jan 19. 13:25
-- Kiszolgáló verziója: 8.0.35-0ubuntu0.22.04.1
-- PHP verzió: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sancameron`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `accounts`
--

CREATE TABLE `accounts` (
  `ID` int NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `arrestID` int NOT NULL,
  `arrestX` float NOT NULL DEFAULT '0',
  `arrestY` float NOT NULL DEFAULT '0',
  `arrestZ` float NOT NULL DEFAULT '0',
  `arrestInterior` int NOT NULL DEFAULT '0',
  `arrestWorld` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `atm`
--

CREATE TABLE `atm` (
  `atmID` int NOT NULL,
  `atmX` float NOT NULL DEFAULT '0',
  `atmY` float NOT NULL DEFAULT '0',
  `atmZ` float NOT NULL DEFAULT '0',
  `atmInterior` int NOT NULL DEFAULT '0',
  `atmWorld` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `backpackitems`
--

CREATE TABLE `backpackitems` (
  `ID` int DEFAULT '0',
  `itemID` int NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int DEFAULT '0',
  `itemQuantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `backpacks`
--

CREATE TABLE `backpacks` (
  `backpackID` int NOT NULL,
  `backpackPlayer` int DEFAULT '0',
  `backpackX` float DEFAULT '0',
  `backpackY` float DEFAULT '0',
  `backpackZ` float DEFAULT '0',
  `backpackInterior` int DEFAULT '0',
  `backpackWorld` int DEFAULT '0',
  `backpackHouse` int DEFAULT '0',
  `backpackVehicle` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `billboards`
--

CREATE TABLE `billboards` (
  `bbID` int NOT NULL,
  `bbExists` int DEFAULT '0',
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int NOT NULL DEFAULT '0',
  `bbPrice` int NOT NULL DEFAULT '0',
  `bbRange` int DEFAULT '10',
  `bbPosX` float DEFAULT '0',
  `bbPosY` float DEFAULT '0',
  `bbPosZ` float DEFAULT '0',
  `bbMessage` varchar(230) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blacklist`
--

CREATE TABLE `blacklist` (
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `businesses`
--

CREATE TABLE `businesses` (
  `bizID` int NOT NULL,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int DEFAULT '0',
  `bizType` int DEFAULT '0',
  `bizPrice` int DEFAULT '0',
  `bizPosX` float DEFAULT '0',
  `bizPosY` float DEFAULT '0',
  `bizPosZ` float DEFAULT '0',
  `bizPosA` float DEFAULT '0',
  `bizIntX` float DEFAULT '0',
  `bizIntY` float DEFAULT '0',
  `bizIntZ` float DEFAULT '0',
  `bizIntA` float DEFAULT '0',
  `bizInterior` int DEFAULT '0',
  `bizExterior` int DEFAULT '0',
  `bizExteriorVW` int DEFAULT '0',
  `bizLocked` int DEFAULT '0',
  `bizVault` int DEFAULT '0',
  `bizProducts` int DEFAULT '0',
  `bizPrice1` int DEFAULT '0',
  `bizPrice2` int DEFAULT '0',
  `bizPrice3` int DEFAULT '0',
  `bizPrice4` int DEFAULT '0',
  `bizPrice5` int DEFAULT '0',
  `bizPrice6` int DEFAULT '0',
  `bizPrice7` int DEFAULT '0',
  `bizPrice8` int DEFAULT '0',
  `bizPrice9` int DEFAULT '0',
  `bizPrice10` int DEFAULT '0',
  `bizSpawnX` float DEFAULT '0',
  `bizSpawnY` float DEFAULT '0',
  `bizSpawnZ` float DEFAULT '0',
  `bizSpawnA` float DEFAULT '0',
  `bizDeliverX` float DEFAULT '0',
  `bizDeliverY` float DEFAULT '0',
  `bizDeliverZ` float DEFAULT '0',
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int DEFAULT '0',
  `bizPrice12` int DEFAULT '0',
  `bizPrice13` int DEFAULT '0',
  `bizPrice14` int DEFAULT '0',
  `bizPrice15` int DEFAULT '0',
  `bizPrice16` int DEFAULT '0',
  `bizPrice17` int DEFAULT '0',
  `bizPrice18` int DEFAULT '0',
  `bizPrice19` int DEFAULT '0',
  `bizPrice20` int DEFAULT '0',
  `bizShipment` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE `cars` (
  `carID` int NOT NULL,
  `carModel` int DEFAULT '0',
  `carOwner` int DEFAULT '0',
  `carPosX` float DEFAULT '0',
  `carPosY` float DEFAULT '0',
  `carPosZ` float DEFAULT '0',
  `carPosR` float DEFAULT '0',
  `carColor1` int DEFAULT '0',
  `carColor2` int DEFAULT '0',
  `carPaintjob` int DEFAULT '-1',
  `carLocked` int DEFAULT '0',
  `carMod1` int DEFAULT '0',
  `carMod2` int DEFAULT '0',
  `carMod3` int DEFAULT '0',
  `carMod4` int DEFAULT '0',
  `carMod5` int DEFAULT '0',
  `carMod6` int DEFAULT '0',
  `carMod7` int DEFAULT '0',
  `carMod8` int DEFAULT '0',
  `carMod9` int DEFAULT '0',
  `carMod10` int DEFAULT '0',
  `carMod11` int DEFAULT '0',
  `carMod12` int DEFAULT '0',
  `carMod13` int DEFAULT '0',
  `carMod14` int DEFAULT '0',
  `carImpounded` int DEFAULT '0',
  `carWeapon1` int DEFAULT '0',
  `carAmmo1` int DEFAULT '0',
  `carWeapon2` int DEFAULT '0',
  `carAmmo2` int DEFAULT '0',
  `carWeapon3` int DEFAULT '0',
  `carAmmo3` int DEFAULT '0',
  `carWeapon4` int DEFAULT '0',
  `carAmmo4` int DEFAULT '0',
  `carWeapon5` int DEFAULT '0',
  `carAmmo5` int DEFAULT '0',
  `carImpoundPrice` int DEFAULT '0',
  `carFaction` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `carstorage`
--

CREATE TABLE `carstorage` (
  `ID` int DEFAULT '0',
  `itemID` int NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int DEFAULT '0',
  `itemQuantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `characters`
--

CREATE TABLE `characters` (
  `ID` int NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Created` int DEFAULT '0',
  `Gender` int DEFAULT '0',
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int DEFAULT '0',
  `Glasses` int DEFAULT '0',
  `Hat` int DEFAULT '0',
  `Bandana` int DEFAULT '0',
  `PosX` float DEFAULT '0',
  `PosY` float DEFAULT '0',
  `PosZ` float DEFAULT '0',
  `PosA` float DEFAULT '0',
  `Interior` int DEFAULT '0',
  `World` int DEFAULT '0',
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Hospital` int DEFAULT '-1',
  `HospitalInt` int DEFAULT '0',
  `Money` int DEFAULT '0',
  `BankMoney` int DEFAULT '0',
  `OwnsBillboard` int DEFAULT '-1',
  `Savings` int DEFAULT '0',
  `Admin` int DEFAULT '0',
  `JailTime` int DEFAULT '0',
  `Muted` int DEFAULT '0',
  `CreateDate` int DEFAULT '0',
  `LastLogin` int DEFAULT '0',
  `Tester` int DEFAULT '0',
  `Gun1` int DEFAULT '0',
  `Gun2` int DEFAULT '0',
  `Gun3` int DEFAULT '0',
  `Gun4` int DEFAULT '0',
  `Gun5` int DEFAULT '0',
  `Gun6` int DEFAULT '0',
  `Gun7` int DEFAULT '0',
  `Gun8` int DEFAULT '0',
  `Gun9` int DEFAULT '0',
  `Gun10` int DEFAULT '0',
  `Gun11` int DEFAULT '0',
  `Gun12` int DEFAULT '0',
  `Gun13` int DEFAULT '0',
  `Ammo1` int DEFAULT '0',
  `Ammo2` int DEFAULT '0',
  `Ammo3` int DEFAULT '0',
  `Ammo4` int DEFAULT '0',
  `Ammo5` int DEFAULT '0',
  `Ammo6` int DEFAULT '0',
  `Ammo7` int DEFAULT '0',
  `Ammo8` int DEFAULT '0',
  `Ammo9` int DEFAULT '0',
  `Ammo10` int DEFAULT '0',
  `Ammo11` int DEFAULT '0',
  `Ammo12` int DEFAULT '0',
  `Ammo13` int DEFAULT '0',
  `House` int DEFAULT '-1',
  `Business` int DEFAULT '-1',
  `Phone` int DEFAULT '0',
  `Lottery` int DEFAULT '0',
  `Hunger` int DEFAULT '100',
  `Thirst` int DEFAULT '100',
  `PlayingHours` int DEFAULT '0',
  `Minutes` int DEFAULT '0',
  `ArmorStatus` float DEFAULT '0',
  `Entrance` int DEFAULT '0',
  `Job` int DEFAULT '0',
  `Faction` int DEFAULT '-1',
  `FactionRank` int DEFAULT '0',
  `Prisoned` int DEFAULT '0',
  `Warrants` int DEFAULT '0',
  `Injured` int DEFAULT '0',
  `Health` float DEFAULT '0',
  `Channel` int DEFAULT '0',
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int DEFAULT '0',
  `Warnings` int DEFAULT '0',
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `MaskID` int DEFAULT '0',
  `FactionMod` int DEFAULT '0',
  `Capacity` int DEFAULT '35',
  `AdminHide` int DEFAULT '0',
  `LotteryB` int NOT NULL DEFAULT '0',
  `SpawnPoint` int NOT NULL DEFAULT '0',
  `answers` int NOT NULL DEFAULT '0',
  `paycheck` int NOT NULL DEFAULT '0',
  `division` int NOT NULL DEFAULT '-1',
  `divisionRank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contacts`
--

CREATE TABLE `contacts` (
  `ID` int DEFAULT '0',
  `contactID` int NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `crates`
--

CREATE TABLE `crates` (
  `crateID` int NOT NULL,
  `crateType` int DEFAULT '0',
  `crateX` float DEFAULT '0',
  `crateY` float DEFAULT '0',
  `crateZ` float DEFAULT '0',
  `crateA` float DEFAULT '0',
  `crateInterior` int DEFAULT '0',
  `crateWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dealervehicles`
--

CREATE TABLE `dealervehicles` (
  `ID` int DEFAULT '0',
  `vehID` int NOT NULL,
  `vehModel` int DEFAULT '0',
  `vehPrice` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `dealervehicles`
--

INSERT INTO `dealervehicles` (`ID`, `vehID`, `vehModel`, `vehPrice`) VALUES
(18, 19, 400, 5000),
(18, 20, 401, 2300),
(18, 21, 405, 7650),
(18, 22, 413, 3000),
(18, 23, 562, 12000),
(18, 24, 541, 20000),
(18, 25, 415, 17000),
(18, 26, 402, 5000),
(18, 27, 451, 15000),
(18, 28, 580, 12000),
(18, 29, 426, 3000),
(18, 30, 566, 2500),
(18, 31, 458, 1500),
(18, 32, 496, 3200),
(18, 33, 559, 10000),
(18, 34, 517, 4000),
(18, 35, 550, 4000),
(18, 36, 560, 8000),
(18, 37, 468, 1500),
(18, 38, 461, 2000),
(18, 39, 471, 1000),
(18, 40, 521, 2000),
(18, 41, 522, 2500),
(18, 42, 445, 1500),
(18, 43, 534, 1800),
(18, 44, 500, 4000),
(37, 45, 400, 3700),
(37, 46, 401, 1650),
(37, 48, 404, 1200),
(37, 49, 405, 3100),
(37, 50, 409, 7000),
(37, 51, 410, 2400),
(37, 53, 412, 4000),
(37, 54, 413, 3200),
(37, 57, 418, 4600),
(37, 58, 419, 1000),
(37, 59, 426, 12000),
(37, 60, 420, 4200),
(37, 61, 422, 800),
(37, 62, 445, 8000),
(37, 63, 421, 3450),
(37, 64, 458, 9000),
(37, 66, 579, 42000),
(37, 68, 562, 24000),
(53, 69, 462, 350),
(53, 70, 463, 650),
(53, 71, 468, 1000),
(53, 72, 586, 950),
(53, 73, 581, 1750),
(54, 74, 487, 175000),
(54, 75, 511, 280000),
(54, 76, 593, 95000),
(37, 77, 566, 7500),
(37, 78, 463, 1200),
(37, 79, 481, 500),
(62, 80, 414, 57500),
(62, 81, 413, 35000),
(62, 82, 440, 2350),
(62, 83, 455, 17500),
(62, 84, 456, 27500),
(62, 85, 498, 17850),
(62, 86, 609, 23500),
(62, 87, 525, 3500),
(37, 89, 439, 4300),
(37, 90, 467, 2300),
(37, 91, 475, 4800),
(37, 92, 479, 2300),
(37, 93, 489, 6500),
(37, 94, 559, 23500),
(37, 95, 565, 16500),
(37, 96, 567, 6550),
(37, 97, 576, 4300),
(37, 98, 580, 4500),
(37, 99, 585, 4600),
(37, 100, 600, 2990),
(37, 101, 602, 8500),
(37, 102, 603, 9500),
(64, 105, 463, 700),
(64, 106, 461, 2350),
(64, 108, 468, 1750),
(64, 109, 586, 600),
(37, 110, 525, 10000),
(89, 111, 566, 3500),
(89, 112, 525, 8500),
(89, 113, 401, 2600),
(89, 115, 405, 11000),
(89, 116, 521, 28000),
(89, 117, 400, 14000),
(89, 118, 404, 4300),
(89, 119, 410, 2000),
(89, 120, 412, 6800),
(89, 121, 421, 9100),
(89, 122, 426, 14500),
(89, 123, 422, 3000),
(89, 124, 442, 6700),
(89, 125, 445, 8700),
(89, 126, 458, 8900),
(89, 127, 463, 6000),
(89, 128, 462, 1000),
(89, 129, 467, 4100),
(89, 130, 475, 8000),
(89, 131, 478, 900),
(89, 132, 482, 5000),
(89, 133, 491, 4000),
(89, 134, 492, 3000),
(89, 135, 516, 8700),
(89, 136, 540, 4500),
(89, 137, 546, 5900),
(89, 138, 551, 6000),
(89, 139, 550, 3900),
(89, 140, 499, 4000),
(89, 141, 508, 7000),
(89, 142, 547, 4000),
(64, 143, 481, 400),
(64, 144, 521, 2800),
(64, 145, 581, 2650),
(37, 146, 560, 75000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `detectors`
--

CREATE TABLE `detectors` (
  `detectorID` int NOT NULL,
  `detectorX` float DEFAULT '0',
  `detectorY` float DEFAULT '0',
  `detectorZ` float DEFAULT '0',
  `detectorAngle` float DEFAULT '0',
  `detectorInterior` int DEFAULT '0',
  `detectorWorld` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `divisions`
--

CREATE TABLE `divisions` (
  `divisionID` int NOT NULL,
  `divisionName` varchar(32) NOT NULL DEFAULT '0',
  `divisionRanks` int NOT NULL DEFAULT '5',
  `divisionLockerX` float NOT NULL DEFAULT '0',
  `divisionLockerY` float NOT NULL DEFAULT '0',
  `divisionLockerZ` float NOT NULL DEFAULT '0',
  `divisionLockerInt` int NOT NULL DEFAULT '0',
  `divisionLockerWorld` int NOT NULL DEFAULT '0',
  `divisionSkin1` int NOT NULL DEFAULT '0',
  `divisionSkin2` int NOT NULL DEFAULT '0',
  `divisionSkin3` int NOT NULL DEFAULT '0',
  `divisionSkin4` int NOT NULL DEFAULT '0',
  `divisionSkin5` int NOT NULL DEFAULT '0',
  `divisionWeapon1` int NOT NULL DEFAULT '0',
  `divisionWeapon2` int NOT NULL DEFAULT '0',
  `divisionWeapon3` int NOT NULL DEFAULT '0',
  `divisionWeapon4` int NOT NULL DEFAULT '0',
  `divisionWeapon5` int NOT NULL DEFAULT '0',
  `divisionAmmo1` int NOT NULL DEFAULT '0',
  `divisionAmmo2` int NOT NULL DEFAULT '0',
  `divisionAmmo3` int NOT NULL DEFAULT '0',
  `divisionAmmo4` int NOT NULL DEFAULT '0',
  `divisionAmmo5` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dropped`
--

CREATE TABLE `dropped` (
  `ID` int NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int DEFAULT '0',
  `itemX` float DEFAULT '0',
  `itemY` float DEFAULT '0',
  `itemZ` float DEFAULT '0',
  `itemInt` int DEFAULT '0',
  `itemWorld` int DEFAULT '0',
  `itemQuantity` int DEFAULT '0',
  `itemAmmo` int DEFAULT '0',
  `itemWeapon` int DEFAULT '0',
  `itemPlayer` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `entrances`
--

CREATE TABLE `entrances` (
  `entranceID` int NOT NULL,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int DEFAULT '0',
  `entrancePosX` float DEFAULT '0',
  `entrancePosY` float DEFAULT '0',
  `entrancePosZ` float DEFAULT '0',
  `entrancePosA` float DEFAULT '0',
  `entranceIntX` float DEFAULT '0',
  `entranceIntY` float DEFAULT '0',
  `entranceIntZ` float DEFAULT '0',
  `entranceIntA` float DEFAULT '0',
  `entranceInterior` int DEFAULT '0',
  `entranceExterior` int DEFAULT '0',
  `entranceExteriorVW` int DEFAULT '0',
  `entranceType` int DEFAULT '0',
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int DEFAULT '0',
  `entranceCustom` int DEFAULT '0',
  `entranceWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `factions`
--

CREATE TABLE `factions` (
  `factionID` int NOT NULL,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` int DEFAULT '0',
  `factionType` int DEFAULT '0',
  `factionRanks` int DEFAULT '0',
  `factionLockerX` float DEFAULT '0',
  `factionLockerY` float DEFAULT '0',
  `factionLockerZ` float DEFAULT '0',
  `factionLockerInt` int DEFAULT '0',
  `factionLockerWorld` int DEFAULT '0',
  `factionWeapon1` int DEFAULT '0',
  `factionAmmo1` int DEFAULT '0',
  `factionWeapon2` int DEFAULT '0',
  `factionAmmo2` int DEFAULT '0',
  `factionWeapon3` int DEFAULT '0',
  `factionAmmo3` int DEFAULT '0',
  `factionWeapon4` int DEFAULT '0',
  `factionAmmo4` int DEFAULT '0',
  `factionWeapon5` int DEFAULT '0',
  `factionAmmo5` int DEFAULT '0',
  `factionWeapon6` int DEFAULT '0',
  `factionAmmo6` int DEFAULT '0',
  `factionWeapon7` int DEFAULT '0',
  `factionAmmo7` int DEFAULT '0',
  `factionWeapon8` int DEFAULT '0',
  `factionAmmo8` int DEFAULT '0',
  `factionWeapon9` int DEFAULT '0',
  `factionAmmo9` int DEFAULT '0',
  `factionWeapon10` int DEFAULT '0',
  `factionAmmo10` int DEFAULT '0',
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionSkin1` int DEFAULT '0',
  `factionSkin2` int DEFAULT '0',
  `factionSkin3` int DEFAULT '0',
  `factionSkin4` int DEFAULT '0',
  `factionSkin5` int DEFAULT '0',
  `factionSkin6` int DEFAULT '0',
  `factionSkin7` int DEFAULT '0',
  `factionSkin8` int DEFAULT '0',
  `SpawnX` float NOT NULL DEFAULT '0',
  `SpawnY` float NOT NULL DEFAULT '0',
  `SpawnZ` float NOT NULL DEFAULT '0',
  `SpawnInterior` int NOT NULL DEFAULT '0',
  `SpawnVW` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `furniture`
--

CREATE TABLE `furniture` (
  `ID` int DEFAULT '0',
  `furnitureID` int NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int DEFAULT '0',
  `furnitureX` float DEFAULT '0',
  `furnitureY` float DEFAULT '0',
  `furnitureZ` float DEFAULT '0',
  `furnitureRX` float DEFAULT '0',
  `furnitureRY` float DEFAULT '0',
  `furnitureRZ` float DEFAULT '0',
  `furnitureType` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int NOT NULL,
  `garbageModel` int DEFAULT '1236',
  `garbageCapacity` int DEFAULT '0',
  `garbageX` float DEFAULT '0',
  `garbageY` float DEFAULT '0',
  `garbageZ` float DEFAULT '0',
  `garbageA` float DEFAULT '0',
  `garbageInterior` int DEFAULT '0',
  `garbageWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gates`
--

CREATE TABLE `gates` (
  `gateID` int NOT NULL,
  `gateModel` int DEFAULT '0',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int DEFAULT '0',
  `gateWorld` int DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int DEFAULT '0',
  `gateFaction` int DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gps`
--

CREATE TABLE `gps` (
  `ID` int DEFAULT '0',
  `locationID` int NOT NULL,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT '0',
  `locationY` float DEFAULT '0',
  `locationZ` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int NOT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int NOT NULL,
  `rackHouse` int DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int DEFAULT '0',
  `rackWorld` int DEFAULT '0',
  `rackWeapon1` int DEFAULT '0',
  `rackAmmo1` int DEFAULT '0',
  `rackWeapon2` int DEFAULT '0',
  `rackAmmo2` int DEFAULT '0',
  `rackWeapon3` int DEFAULT '0',
  `rackAmmo3` int DEFAULT '0',
  `rackWeapon4` int DEFAULT '0',
  `rackAmmo4` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `houses`
--

CREATE TABLE `houses` (
  `houseID` int NOT NULL,
  `houseOwner` int DEFAULT '0',
  `housePrice` int DEFAULT '0',
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT '0',
  `housePosY` float DEFAULT '0',
  `housePosZ` float DEFAULT '0',
  `housePosA` float DEFAULT '0',
  `houseIntX` float DEFAULT '0',
  `houseIntY` float DEFAULT '0',
  `houseIntZ` float DEFAULT '0',
  `houseIntA` float DEFAULT '0',
  `houseInterior` int DEFAULT '0',
  `houseExterior` int DEFAULT '0',
  `houseExteriorVW` int DEFAULT '0',
  `houseLocked` int DEFAULT '0',
  `houseWeapon1` int DEFAULT '0',
  `houseAmmo1` int DEFAULT '0',
  `houseWeapon2` int DEFAULT '0',
  `houseAmmo2` int DEFAULT '0',
  `houseWeapon3` int DEFAULT '0',
  `houseAmmo3` int DEFAULT '0',
  `houseWeapon4` int DEFAULT '0',
  `houseAmmo4` int DEFAULT '0',
  `houseWeapon5` int DEFAULT '0',
  `houseAmmo5` int DEFAULT '0',
  `houseWeapon6` int DEFAULT '0',
  `houseAmmo6` int DEFAULT '0',
  `houseWeapon7` int DEFAULT '0',
  `houseAmmo7` int DEFAULT '0',
  `houseWeapon8` int DEFAULT '0',
  `houseAmmo8` int DEFAULT '0',
  `houseWeapon9` int DEFAULT '0',
  `houseAmmo9` int DEFAULT '0',
  `houseWeapon10` int DEFAULT '0',
  `houseAmmo10` int DEFAULT '0',
  `houseMoney` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int DEFAULT '0',
  `itemID` int NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int DEFAULT '0',
  `itemQuantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `impoundlots`
--

CREATE TABLE `impoundlots` (
  `impoundID` int NOT NULL,
  `impoundLotX` float DEFAULT '0',
  `impoundLotY` float DEFAULT '0',
  `impoundLotZ` float DEFAULT '0',
  `impoundReleaseX` float DEFAULT '0',
  `impoundReleaseY` float DEFAULT '0',
  `impoundReleaseZ` float DEFAULT '0',
  `impoundReleaseInt` int DEFAULT '0',
  `impoundReleaseWorld` int DEFAULT '0',
  `impoundReleaseA` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `inventory`
--

CREATE TABLE `inventory` (
  `ID` int DEFAULT '0',
  `invID` int NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int DEFAULT '0',
  `invQuantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int NOT NULL,
  `jobPosX` float DEFAULT '0',
  `jobPosY` float DEFAULT '0',
  `jobPosZ` float DEFAULT '0',
  `jobPointX` float DEFAULT '0',
  `jobPointY` float DEFAULT '0',
  `jobPointZ` float DEFAULT '0',
  `jobDeliverX` float DEFAULT '0',
  `jobDeliverY` float DEFAULT '0',
  `jobDeliverZ` float DEFAULT '0',
  `jobInterior` int DEFAULT '0',
  `jobWorld` int DEFAULT '0',
  `jobType` int DEFAULT '0',
  `jobPointInt` int DEFAULT '0',
  `jobPointWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `namechanges`
--

CREATE TABLE `namechanges` (
  `ID` int NOT NULL,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `plants`
--

CREATE TABLE `plants` (
  `plantID` int NOT NULL,
  `plantType` int DEFAULT '0',
  `plantDrugs` int DEFAULT '0',
  `plantX` float DEFAULT '0',
  `plantY` float DEFAULT '0',
  `plantZ` float DEFAULT '0',
  `plantA` float DEFAULT '0',
  `plantInterior` int DEFAULT '0',
  `plantWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pumps`
--

CREATE TABLE `pumps` (
  `ID` int DEFAULT '0',
  `pumpID` int NOT NULL,
  `pumpPosX` float DEFAULT '0',
  `pumpPosY` float DEFAULT '0',
  `pumpPosZ` float DEFAULT '0',
  `pumpPosA` float DEFAULT '0',
  `pumpFuel` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tickets`
--

CREATE TABLE `tickets` (
  `ID` int DEFAULT '0',
  `ticketID` int NOT NULL,
  `ticketFee` int DEFAULT '0',
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int NOT NULL,
  `vendorType` int DEFAULT '0',
  `vendorX` float DEFAULT '0',
  `vendorY` float DEFAULT '0',
  `vendorZ` float DEFAULT '0',
  `vendorA` float DEFAULT '0',
  `vendorInterior` int DEFAULT '0',
  `vendorWorld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `warrants`
--

CREATE TABLE `warrants` (
  `ID` int NOT NULL,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`arrestID`);

--
-- A tábla indexei `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- A tábla indexei `backpackitems`
--
ALTER TABLE `backpackitems`
  ADD PRIMARY KEY (`itemID`);

--
-- A tábla indexei `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`backpackID`);

--
-- A tábla indexei `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`bbID`);

--
-- A tábla indexei `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`bizID`);

--
-- A tábla indexei `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carID`);

--
-- A tábla indexei `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`);

--
-- A tábla indexei `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- A tábla indexei `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`crateID`);

--
-- A tábla indexei `dealervehicles`
--
ALTER TABLE `dealervehicles`
  ADD PRIMARY KEY (`vehID`);

--
-- A tábla indexei `detectors`
--
ALTER TABLE `detectors`
  ADD PRIMARY KEY (`detectorID`);

--
-- A tábla indexei `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`divisionID`);

--
-- A tábla indexei `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`entranceID`);

--
-- A tábla indexei `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- A tábla indexei `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- A tábla indexei `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- A tábla indexei `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- A tábla indexei `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`locationID`);

--
-- A tábla indexei `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- A tábla indexei `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- A tábla indexei `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- A tábla indexei `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- A tábla indexei `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD PRIMARY KEY (`impoundID`);

--
-- A tábla indexei `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- A tábla indexei `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- A tábla indexei `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- A tábla indexei `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- A tábla indexei `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- A tábla indexei `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- A tábla indexei `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `arrestID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `backpackitems`
--
ALTER TABLE `backpackitems`
  MODIFY `itemID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `backpacks`
--
ALTER TABLE `backpacks`
  MODIFY `backpackID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `billboards`
--
ALTER TABLE `billboards`
  MODIFY `bbID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `businesses`
--
ALTER TABLE `businesses`
  MODIFY `bizID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT a táblához `cars`
--
ALTER TABLE `cars`
  MODIFY `carID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT a táblához `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `crates`
--
ALTER TABLE `crates`
  MODIFY `crateID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `dealervehicles`
--
ALTER TABLE `dealervehicles`
  MODIFY `vehID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT a táblához `detectors`
--
ALTER TABLE `detectors`
  MODIFY `detectorID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `divisions`
--
ALTER TABLE `divisions`
  MODIFY `divisionID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `entrances`
--
ALTER TABLE `entrances`
  MODIFY `entranceID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT a táblához `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gps`
--
ALTER TABLE `gps`
  MODIFY `locationID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT a táblához `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `impoundID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `warrants`
--
ALTER TABLE `warrants`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
