CREATE TABLE [dbo].[Proiezioni] (
    [CodProiezione]  INT             NOT NULL,
    [CodFilm]        INT             NOT NULL,
    [CodSala]        INT             NOT NULL,
    [Incasso]        DECIMAL (12, 2) NOT NULL,
    [DataProiezione] DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([CodProiezione] ASC)
);

