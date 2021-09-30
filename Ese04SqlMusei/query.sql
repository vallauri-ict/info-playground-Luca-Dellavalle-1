DROP TABLE Opera,Personaggio,Artista,Museo;

CREATE TABLE Artista (
 NomeA VARCHAR(20) PRIMARY KEY,
 Nazionalita VARCHAR(20) NOT NULL
)

CREATE TABLE Museo (
 NomeM VARCHAR(20) PRIMARY KEY,
 Citta VARCHAR(20) NOT NULL
)

CREATE TABLE Personaggio (
 Personaggio VARCHAR(20) PRIMARY KEY,
 Codice INT,
 FOREIGN KEY (Codice) REFERENCES Opera(Codice)
)

CREATE TABLE Opera (
 Codice INT PRIMARY KEY IDENTITY,
 Titolo VARCHAR(20) NOT NULL,
 NomeM VARCHAR(20) NOT NULL,
 NomeA VARCHAR(20) NOT NULL,
 FOREIGN KEY (NomeM) REFERENCES Museo(NomeM),
 FOREIGN KEY (NomeA) REFERENCES Artista(NomeA)
)

INSERT INTO Personaggio VALUES 
('Dalì',1),
('Fiori di pesco',2),
('Le tre grazie',3);

INSERT INTO Museo VALUES
('Museo1','SP'),
('Museo2','JP'),
('Museo3', 'IT');

INSERT INTO Opera VALUES
('Film1','Museo1','Artista1'),
('Film2','Museo2','Artista2'),
('Film3','Museo3','Artista3');

INSERT INTO Artista VALUES
('Artista1','SP'),
('Artista2','JP'),
('Artista3', 'IT');

