DROP TABLE Auto, Proprietari, Assicurazioni, Sinistro, Autocoinvolte;

CREATE TABLE Proprietari(
	CodF int PRIMARY KEY,
	Nome varchar(50) NOT NULL,
	Residenza varchar(40) NOT NULL
)

CREATE TABLE Assicurazioni(
	CodAss int PRIMARY KEY,
	Nome varchar(30) NOT NULL,
	Sede varchar(40) NOT NULL
)

CREATE TABLE Auto(
	Targa varchar(20) PRIMARY KEY,
	Marca varchar(30) NOT NULL,
	Cilindrata int NOT NULL ,
	Potenza int NOT NULL,
	FOREIGN KEY (CodF) REFERENCES  Proprietari(Codf),
	FOREIGN KEY (CodAss) REFERENCES Assicurazioni(CodAss)
)

CREATE TABLE Sinistro(
	CodS int PRIMARY KEY,
	Località varchar(40) NOT NULL,
	DataS DATETIME NULL
)

CREATE TABLE Autocoinvolte(
	FOREIGN KEY (CodS) REFERENCES Sinistro(CodS),
	FOREIGN KEY (Targa) REFERENCES Auto(Targa),
	ImportoDelDanno int NOT NULL
)



