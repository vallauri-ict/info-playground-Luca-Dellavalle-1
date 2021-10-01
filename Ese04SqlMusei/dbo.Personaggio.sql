CREATE TABLE [dbo].[Personaggio]
(
	[Personaggio] VARCHAR(20) PRIMARY KEY,
	[Codice] INT,
    FOREIGN KEY (Codice) REFERENCES Opera(Codice)
)
