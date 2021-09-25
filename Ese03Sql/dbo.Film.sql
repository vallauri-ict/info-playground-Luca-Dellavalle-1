CREATE TABLE [dbo].[Film]
(
	[CodFilm] INT NOT NULL PRIMARY KEY IDENTITY,
	[Titolo] VARCHAR(30) NULL,
	[AnnoProduzione] INT NULL,
	[Nazionalita] VARCHAR(50) NULL,
	[Regista] VARCHAR(50) NULL,
	[Genere] VARCHAR(20) NULL,
	[Durata] INT NULL
)