DROP TABLE AutoCoinvolte,_Auto, Sinistro, Assicurazioni, Proprietari;

CREATE TABLE Proprietari(
	CodF int PRIMARY KEY IDENTITY,
	Nome varchar(50) NOT NULL,
	Residenza varchar(40) NOT NULL
)

CREATE TABLE Assicurazioni(
	CodAss int PRIMARY KEY IDENTITY,
	Nome varchar(30) NOT NULL,
	Sede varchar(40) NOT NULL
)

CREATE TABLE Sinistro(
	CodS int PRIMARY KEY IDENTITY,
	Localita varchar(40) NOT NULL,
	DataS DATETIME NULL
)

CREATE TABLE _Auto(
	Targa varchar(20) PRIMARY KEY,
	Marca varchar(30) NOT NULL,
	Cilindrata int NOT NULL ,
	Potenza int NOT NULL,
	CodF int FOREIGN KEY REFERENCES  Proprietari(CodF),
	CodAss int FOREIGN KEY REFERENCES Assicurazioni(CodAss)
)

CREATE TABLE AutoCoinvolte(
	CodS int FOREIGN KEY REFERENCES Sinistro(CodS),
	Targa varchar(20) FOREIGN KEY REFERENCES _Auto(Targa),
	ImportoDelDanno int NOT NULL
)

/*INSERT*/

INSERT INTO Proprietari VALUES
('Mario','Savona'),
('Sergio','Bra'),
('Sofia','Cuneo');

INSERT INTO Assicurazioni VALUES
('Vittoria','Roma'),
('Cattolica','Torino'),
('Unicredit','Milano');

INSERT INTO Sinistro VALUES
('Alba','20032021'),
('Monchiero','21052021'),
('Dogliani','05032021');

INSERT INTO _Auto VALUES
('AB990FD','Mercedes',100,50),
('ER345TR','Audi',200,60),
('RT432FR','BMW',300,70);

INSERT INTO AutoCoinvolte VALUES
(10000),
(20000),
(1000);