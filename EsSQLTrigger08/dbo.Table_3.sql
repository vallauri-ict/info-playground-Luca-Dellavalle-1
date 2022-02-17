CREATE TABLE [dbo].[StoricoCancellazioni] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [number]         INT           NOT NULL,
    [full_name]      VARCHAR (100) NULL,
    [country]        CHAR (2)      NOT NULL,
    [date_birth]     DATE          NULL,
    [team_id]        INT           NULL,
    [podiums_number] INT           NULL,
    [data]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)