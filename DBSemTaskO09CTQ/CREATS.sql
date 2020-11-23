/*USE beadndo_o09ctq;*/


CREATE TABLE `Bolt` (
  `UzletID` char(3)  NOT NULL,
  `Iranyitoszam` int NOT NULL,
  `Varos` varchar(50)   NOT NULL,
  `Hazszam` int NOT NULL,
  `Utca` varchar(50)  NOT NULL,
  `Email` varchar(50)  NOT NULL,
  `Telefonszam` varchar(50)  NOT NULL,
  PRIMARY KEY (`UzletID`),
  UNIQUE KEY `UzletID_UNIQUE` (`UzletID`)
) ENGINE=InnoDB ;

CREATE TABLE `alkalmazott` (
  `DolgozoID` char(3) COLLATE utf8_hungarian_ci NOT NULL,
  `UzletID` char(3) COLLATE utf8_hungarian_ci NOT NULL,
  `Nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `DolgozoEmail` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`DolgozoID`),
  UNIQUE KEY `DolgozoID_UNIQUE` (`DolgozoID`),
  KEY `UzletID` (`UzletID`),
  FOREIGN KEY (`UzletID`) REFERENCES `bolt` (`UzletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


CREATE TABLE `jatekszoftver` (
  `termekID` char(5) COLLATE utf8_hungarian_ci NOT NULL,
  `Cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` int NOT NULL,
  `KorHatar` enum('7','12','16','18') COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`termekID`),
  UNIQUE KEY `termekID_UNIQUE` (`termekID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


CREATE TABLE `beadndo_o09ctq`.`raktar` (
  `RaktarID` CHAR(3) NOT NULL,
  `termekID` CHAR(5) NULL,
  `UzletID` CHAR(3) NULL,
  `ElerhetoDarab` INT NULL,
  PRIMARY KEY (`RaktarID`),
  UNIQUE INDEX `RaktarID_UNIQUE` (`RaktarID` ASC),
  FOREIGN KEY (termekID)
  REFERENCES jatekszoftver(termekID),
  FOREIGN KEY (UzletID)
  REFERENCES  Bolt(UzletID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `jatekszoftver-raktar` (
  `RaktarID` char(3) COLLATE utf8_hungarian_ci NOT NULL,
  `termekID` char(5) COLLATE utf8_hungarian_ci NOT NULL,
  `Minoseg` enum('0','1') COLLATE utf8_hungarian_ci NOT NULL,
  KEY `termekID` (`termekID`),
  KEY `RaktarID` (`RaktarID`),
  CONSTRAINT `jatekszoftver-raktar_ibfk_1` FOREIGN KEY (`termekID`) REFERENCES `jatekszoftver` (`termekID`),
  CONSTRAINT `jatekszoftver-raktar_ibfk_2` FOREIGN KEY (`RaktarID`) REFERENCES `raktar` (`RaktarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


CREATE TABLE `beadndo_o09ctq`.`Jatekplatform` (
  `termekID` CHAR(5) NOT NULL,
  `Platform` VARCHAR(10) NOT NULL,
   FOREIGN KEY (`termekID`) REFERENCES `jatekszoftver` (`termekID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `tranzakciok` (
  `TID` char(7) COLLATE utf8_hungarian_ci NOT NULL,
  `UzletID` char(3) COLLATE utf8_hungarian_ci NOT NULL,
  `Datum` date NOT NULL,
  PRIMARY KEY (`TID`),
  UNIQUE KEY `TID_UNIQUE` (`TID`),
  KEY `UzletID` (`UzletID`),
  CONSTRAINT `tranzakciok_ibfk_1` FOREIGN KEY (`UzletID`) REFERENCES `bolt` (`UzletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `vasarlas` (
  `VasarlasID` int NOT NULL,
  `TID` char(7) COLLATE utf8_hungarian_ci NOT NULL,
  `termekID` char(5) COLLATE utf8_hungarian_ci NOT NULL,
  `Darabszam` int NOT NULL,
  PRIMARY KEY (`VasarlasID`),
  KEY `TID` (`TID`),
  KEY `termekID` (`termekID`),
  CONSTRAINT `vasarlas_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `tranzakciok` (`TID`),
  CONSTRAINT `vasarlas_ibfk_2` FOREIGN KEY (`termekID`) REFERENCES `jatekszoftver` (`termekID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;



