CREATE TABLE [dbo].[Opera]
(
	 [Codice] INT PRIMARY KEY IDENTITY,
	 [Titolo] VARCHAR(20) NOT NULL,
     [NomeMuseo] VARCHAR(20) NOT NULL,
     [NomeArtista] VARCHAR(20) NOT NULL,
	 FOREIGN KEY (NomeM) REFERENCES Museo(NomeMuseo),
	 FOREIGN KEY (NomeA) REFERENCES Artista(NomeArtista)
)
