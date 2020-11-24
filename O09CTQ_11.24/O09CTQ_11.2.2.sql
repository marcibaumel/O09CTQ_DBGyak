USE gyak11;

Insert Into Tulajdonos Values(1001, 'Kis János', 'Miskolc');
Insert Into Tulajdonos Values(1002, 'Kis Éva', 'Mályi');
Insert Into Tulajdonos Values(1003, 'Retek Ödön', 'Miskolc');
Insert Into Tulajdonos Values(1004, 'Vitág Zoltán', 'Nyék');
Insert Into Tulajdonos Values(1005, 'Nagy Eszter', 'Nyék');
Insert Into Tulajdonos Values(1006, 'Kovács Magor', 'Mályi');
Insert Into Tulajdonos Values(1007, 'Asztal Antal', 'Miskolc');

INSERT INTO Autó VALUES('FER-831', 'Opel Corsa', 'Piros', 18, 390, 1001);
INSERT INTO Autó VALUES('IXJ-239', 'Suzuki Swift', 'Zöld', 15, 450, 1005);
INSERT INTO Autó VALUES('JAH-425', 'Skoda Fabia', 'Piros', 13, 620, 1002);
INSERT INTO Autó VALUES('MLM-211', 'Toyota Yaris', 'Fehér', 3, 1850, 1005);
INSERT INTO Autó VALUES('KFT-204', 'Opel Astra', 'Szürke', 7, 1250, 1006);
INSERT INTO Autó VALUES('JCD-443', 'Opel Astra', 'Fekete', 12, 990, 1007);
INSERT INTO Autó VALUES('KAP-290', 'BMW 316', 'Fekete', 6, 3250, 1002);
INSERT INTO Autó VALUES('GDF-525', 'Renault Twingo', 'Fekete', 16, 280, Null);
INSERT INTO Autó VALUES('HUB-936', 'Suzuki Swift', 'Fekete', 16, 500, Null);

INSERT INTO Kategoria VALUES('Selejt', 0, 200);
INSERT INTO Kategoria Values ('Olcsó', 201, 500);
INSERT INTO Kategoria VAlues('Átlagos', 501, 1000);
Insert Into Kategoria values('Drága', 1001, 5000);