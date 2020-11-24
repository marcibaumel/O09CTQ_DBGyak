use gyak11;

SELECT autó.Rendszám, tulajdonos.Név
FROM tulajdonos
INNER JOIN autó
ON tulajdonos.tkód=autó.Tulaj;