use gyak11;

/*
SELECT autó.Rendszám, tulajdonos.Név
FROM tulajdonos
INNER JOIN autó
ON tulajdonos.tkód=autó.Tulaj;
*/

/*
SELECT autó.*
FROM tulajdonos
INNER JOIN autó
ON tulajdonos.tkód=autó.Tulaj
WHERE tulajdonos.Város='Miskolc';
*/

/*
SELECT autó.Típus, autó.Ár, Kategoria.Knév
FROM autó
*/

/*
SELECT tulajdonos.Név, autó.Rendszám, tulajdonos.TKód
FROM tulajdonos
JOIN autó
ON tulajdonos.tkód=autó.Tulaj
*/

/*
SELECT tulajdonos.Név, autó.Rendszám, tulajdonos.TKód
FROM tulajdonos
WHERE autó.rendszám!=null
JOIN autó
ON tulajdonos.tkód=autó.Tulaj;
*/

/*
SELECT autó.Rendszám
FROM autó
JOIN tulajdonos
ON tulajdonos.tkód=autó.Tulaj
WHERE avg(autó.Ár)>autó.Ár;
*/



