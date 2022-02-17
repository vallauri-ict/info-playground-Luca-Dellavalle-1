CREATE TABLE [dbo].[Auto]
(
	[Targa] VARCHAR(50) NOT NULL PRIMARY KEY,
	[Cilindrata] INT NOT NULL,
	[Prezzo] NUMERIC(8, 2) NOT NULL,
	[Modello] VARCHAR(50) NOT NULL,
	[Marca] VARCHAR(50) NOT NULL,
	[Alimentazione] VARCHAR(50) NOT NULL
)

GO

CREATE TRIGGER [dbo].[Nuovaauto]
    ON [dbo].[Auto]
    INSTEAD OF INSERT
    AS
    BEGIN
        --SET NoCount ON
		DECLARE @Targa as VARCHAR(50)
		DECLARE @Cilindrata as INT 
		DECLARE @Prezzo as NUMERIC(8,2)
		DECLARE @Modello as VARCHAR(50)
		DECLARE @Marca as VARCHAR(50)
		DECLARE @Alimentazione as VARCHAR(50)

		SET @Targa = (SELECT Targa from inserted)
		SET @Cilindrata = (SELECT Cilindrata from inserted)
		SET @Prezzo = (SELECT Prezzo from inserted)
		SET @Modello = (SELECT Modello from inserted)
		SET @Marca = (SELECT Marca from inserted)
		SET @Alimentazione = (SELECT Alimentazione from inserted)

		IF(@Cilindrata<900)
			set @Cilindrata = 900

		IF(@Cilindrata>4000)
			set @Cilindrata = 4000


		INSERT INTO Auto 
			VALUES(@Targa,@Cilindrata,@Prezzo,@Modello,@Marca,@Alimentazione)
    END