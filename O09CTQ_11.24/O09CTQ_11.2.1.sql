USE gyak11;

CREATE TABLE Tulajdonos(TKód INT(4) Primary Key, Név Varchar(20) Not Null, Város Varchar(20));


CREATE TABLE Autó (Rendszám Char(7) Primary Key, Típus Varchar(25) Not Null , Szín Varchar(15), Kor int(2), Ár INT(8), Tulaj int(4), Foreign key(Tulaj) REFERENCES Tulajdonos(TKód));


CREATE TABLE Kategoria (Knév VARCHAR(12), AlsóHP INT(4), FelsőHP Int(4));
