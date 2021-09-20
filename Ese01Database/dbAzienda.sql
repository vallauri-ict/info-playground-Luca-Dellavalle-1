CREATE TABLE Impiegato(
nome VARCHAR(30) NOT NULL PRIMARY KEY,	
titolo VARCHAR(50),
eta INT NOT NULL,
salario DECIMAL(12,2),
dip CHAR(1)
)

CREATE TABLE [dbo].[Cliente]
(
	[idCliente] INT NOT NULL PRIMARY KEY IDENTITY, 
    [nome] VARCHAR(30) NOT NULL, 
    [cognome] VARCHAR(20) NOT NULL,
	[citta] VARCHAR(20) NOT NULL,
	[stato] VARCHAR (3) NOT NULL
)


CREATE TABLE Acquisto(
id INT NOT NULL PRIMARY KEY IDENTITY,
idCliente INT NOT NULL,
dataDiOrdinazione DATE NOT NULL,
item INT NOT NULL,
quantita INT NOT NULL,
prezzo DECIMAL(12,2) NOT NULL
)

INSERT INTO Cliente (nome,cognome,citta,stato)
VALUES ('Alberto', 'Martino', 'Revello', 'IT'),
('Maria', 'Racca', 'Savigliano', 'IT'),
('Edoardo', 'Morina', 'Verzuolo', 'IT')

INSERT INTO Impiegato VALUES
('Lurenz', '', 18, 1325, 'S'),
('Parrick','', 17, 1200, 'S'),
('Bea', '', 16,  1800, 'S')

INSERT INTO Acquisto (idCliente,dataDiOrdinazione,item,quantita,prezzo)
VALUES (1, '2021-08-31', 1, 1, 30),
(2, '2021-09-29',2, 2, 15)