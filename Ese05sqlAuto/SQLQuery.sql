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
('ca1','Vittoria','Roma'),
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

UPDATE Assicurazioni
SET Nome='Sara'
WHERE CodAss='ca2' AND CodAss='ca3'

UPDATE _Auto
SET Cilindrata=2000
WHERE CodF='cf1'

UPDATE Sinistro
SET DataS='20020120'
WHERE CodS='cs3'

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
WHERE a.CodF=p.CodF 
AND (Cilindrata = 2000 OR Potenza > 120) 
AND a.CodAss=ass.CodAss
AND ass.Nome='Sara'

/*4. Targa e Nome del proprietario delle Auto assicurate presso la “SARA” e coinvolte in sinistri il
20/01/02*/



