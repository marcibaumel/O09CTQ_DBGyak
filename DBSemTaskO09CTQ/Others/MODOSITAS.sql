USE beadndo_o09CTQ;

/*
ALTER TABLE vasarlas ADD Reszosszeg INT;

UPDATE vasarlas vs 
INNER JOIN jatekszoftver jsz ON vs.termekID = jsz.termekID
SET vs.Reszosszeg=vs.Darabszam*jsz.Ar;

ALTER TABLE tranzakciok ADD Osszeg INT;

*/

/*
UPDATE tranzakciok tz
INNER JOIN vasarlas vs ON  tz.TID=vs.TID
SET tz.Osszeg=SUM(vs.Reszosszeg)
WHERE vs.TID=tz.TID;

*/

UPDATE tranzakciok tz
SET tz.Osszeg=(SELECT SUM(vs.Reszosszeg)FROM vasarlas vs WHERE vs.TID=tz.TID);



