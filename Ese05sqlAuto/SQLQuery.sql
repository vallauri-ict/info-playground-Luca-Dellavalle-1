DROP TABLE AutoCoinvolte, _Auto, Sinistro, Assicurazioni, Proprietari;

CREATE TABLE Proprietari(
	CodF varchar(10) PRIMARY KEY ,
	Nome varchar(50) NOT NULL,
	Residenza varchar(40) NOT NULL
)

CREATE TABLE Assicurazioni(
	CodAss varchar(10) PRIMARY KEY ,
	Nome varchar(30) NOT NULL,
	Sede varchar(40) NOT NULL
)

CREATE TABLE Sinistro(
	CodS varchar(10) PRIMARY KEY ,
	Localita varchar(40) NOT NULL,
	DataS DATETIME NULL
)

CREATE TABLE _Auto(
	Targa varchar(20) PRIMARY KEY,
	Marca varchar(30) NOT NULL,
	Cilindrata int NOT NULL ,
	Potenza int NOT NULL,
	CodF varchar(10) FOREIGN KEY REFERENCES  Proprietari(CodF),
	CodAss varchar(10) FOREIGN KEY REFERENCES Assicurazioni(CodAss)
)

CREATE TABLE AutoCoinvolte(
	CodS varchar(10) FOREIGN KEY REFERENCES Sinistro(CodS),
	Targa varchar(20) FOREIGN KEY REFERENCES _Auto(Targa),
	ImportoDelDanno int NOT NULL
)

/*INSERT*/

INSERT INTO Proprietari VALUES
('cf1','Mario','Savona'),
('cf2','Sergio','Bra'),
('cf3','Sofia','Cuneo');

INSERT INTO Assicurazioni VALUES
('ca1','Sara','Roma'),
('ca2','Cattolica','Torino'),
('ca3','Unicredit','Milano');

INSERT INTO Sinistro VALUES
('cs1','Alba','20210322'),
('cs2','Monchiero','20210521'),
('cs3','Dogliani','20200910');

INSERT INTO _Auto VALUES
('AB990FD','Mercedes',100,50,'cf1','ca1'),
('ER345TR','Audi',200,60,'cf2','ca2'),
('RT432FR','BMW',300,70,'cf3','ca3');

INSERT INTO AutoCoinvolte VALUES
('cs1','AB990FD',10000),
('cs2','ER345TR',20000),
('cs3','RT432FR',1000);

/*UPDATE*/

UPDATE _Auto
SET Potenza=130
WHERE CodF='cf2';

UPDATE _Auto
SET Cilindrata=2000
WHERE CodF='cf1'

UPDATE Sinistro
SET DataS='20020120'
WHERE CodS='cs3'

UPDATE Sinistro
SET DataS='20020120'
WHERE CodS='cs2'

UPDATE _Auto
SET Marca='Fiat'
WHERE Targa='RT432FR'


/*QUERY*/

/*1. Targa e Marca delle Auto di cilindrata superiore a 2000 cc o di potenza superiore a 120 CV*/
SELECT _Auto.Targa, _Auto.Marca
FROM _Auto
WHERE Cilindrata = 2000 OR Potenza > 120

/*2. Nome del proprietario e Targa delle Auto di cilindrata superiore a 2000 cc oppure di potenza
superiore a 120 CV*/
SELECT p.Nome, a.Targa
FROM _Auto a, Proprietari p
WHERE a.CodF=p.CodF 
AND (Cilindrata = 2000 OR Potenza > 120)

/*3. Targa e Nome del proprietario delle Auto di cilindrata superiore a 2000 cc oppure di potenza
superiore a 120 CV, assicurate presso la “SARA”*/
SELECT p.Nome, a.Targa
FROM _Auto a, Proprietari p, Assicurazioni ass
WHERE (a.Cilindrata = 2000 OR a.Potenza > 120)
AND ass.Nome='Sara'
AND a.CodF=p.CodF
AND a.CodAss=ass.CodAss

/*4. Targa e Nome del proprietario delle Auto assicurate presso la “SARA” e coinvolte in sinistri il
20/01/02*/
SELECT a.Targa, p.Nome
FROM _Auto a, Assicurazioni ass, Proprietari p, AutoCoinvolte ac, Sinistro s
WHERE ac.Targa = a.Targa
AND ass.Nome='Sara'
AND p.CodF = a.CodF
AND s.CodS=ac.CodS
AND s.Datas='20020120'

/*5. Per ciascuna Assicurazione, il nome, la sede ed il numero di auto assicurate*/
SELECT ass.Nome, ass.Sede, COUNT(*) AS nAutoAssicurate
FROM Assicurazioni ass, _Auto a
WHERE a.CodAss=ass.CodAss
GROUP BY ass.Nome, ass.Sede, ass.Sede

/*6. Per ciascuna auto “Fiat”, la targa dell’auto ed il numero di sinistri in cui è stata coinvolta*/
SELECT a.Targa, COUNT(*) AS nSinistri
FROM _Auto a, AutoCoinvolte ac
WHERE a.Marca='Fiat' AND a.Targa = ac.Targa 
GROUP BY a.Targa

/*7. Per ciascuna auto coinvolta in più di un sinistro, la targa dell’auto, il nome dell’ Assicurazione
ed il totale dei danni riportati*/
SELECT a.Targa,ass.Nome, sum(ac.ImportoDelDanno)
FROM AutoCoinvolte ac,_Auto a,Assicurazioni ass
WHERE a.Targa=ac.Targa AND a.CodAss=ass.CodAss
GROUP BY a.Targa, ass.Nome
HAVING COUNT(*) > 1





