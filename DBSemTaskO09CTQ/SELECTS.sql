/*USE beadndo_o09ctq;*/

/*1,*/
SELECT alkalmazott.Nev
FROM alkalmazott
INNER JOIN bolt ON bolt.UzletID=alkalmazott.UzletID
WHERE alkalmazott.UzletID='002';

/*2,*/
SELECT bolt.Telefonszam FROM bolt WHERE bolt.Varos='Budapest';

/*3,*/
SELECT COUNT(jatekszoftver_raktar.Minoseg) FROM jatekszoftver_raktar WHERE jatekszoftver_raktar.Minoseg='0'; 

/*4,*/
SELECT COUNT(jatekszoftver.Ar) FROM jatekszoftver WHERE jatekszoftver.Ar>12000;

/*5,*/
SELECT raktar.UzletID, SUM(raktar.ElerhetoDarab) AS darab 
FROM raktar 
GROUP BY raktar.UzletID 
ORDER BY darab DESC;

/*6,*/
SELECT jatekszoftver.Cim, jatekplatform.Platform
FROM jatekszoftver
INNER JOIN jatekplatform ON jatekszoftver.termekID=jatekplatform.TermekID
WHERE jatekplatform.Platform IS NOT NULL;

/*7,*/
SELECT COUNT(jatekszoftver.termekID) FROM jatekszoftver WHERE jatekszoftver.KorHatar='7';

/*8,*/
SELECT TID FROM tranzakciok WHERE Osszeg=(SELECT MAX(tranzakciok.Osszeg) FROM tranzakciok);

/*9,*/
SELECT SUM(tranzakciok.Osszeg) FROM tranzakciok WHERE MONTH(tranzakciok.Datum)=11 AND YEAR(tranzakciok.Datum)=2020;

/*10,*/
SELECT jatekszoftver.Cim, SUM(raktar.ElerhetoDarab) AS darab
FROM jatekszoftver
INNER JOIN raktar ON jatekszoftver.termekID=raktar.TermekID
GROUP BY raktar.TermekID
ORDER BY darab LIMIT 5;











