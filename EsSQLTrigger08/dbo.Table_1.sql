CREATE TABLE [dbo].[Driver](
    [number]         INT           NOT NULL,
    [full_name]      VARCHAR (100) NULL,
    [country]        CHAR (2)      NOT NULL,
    [date_birth]     DATE          NULL,
    [team_id]        INT           NULL,
    [podiums_number] INT           NULL,
    PRIMARY KEY CLUSTERED ([number] ASC)
)
GO

CREATE TRIGGER [dbo].[TriggerDriver]
    ON [dbo].[Driver]
    FOR DELETE, UPDATE
    AS
    BEGIN
        --SET NoCount ON
	DECLARE @number as INT
	DECLARE @full_name as VARCHAR(100)
	DECLARE @country as CHAR(2)
	DECLARE @date_birth DATE
	DECLARE @team_id INT
	DECLARE @podiums_number INT 

	SET @number = (SELECT number from inserted)
	SET @full_name = (SELECT full_name from inserted)
	SET @country = (SELECT country from inserted)
	SET @date_birth = (SELECT date_birth from inserted)
	SET @team_id = (SELECT team_id from inserted)
	SET @podiums_number= (SELECT podiums_number from inserted) 

	INSERT INTO StoricoCancellazioni
		VALUES(13,23,'Piero','Italia',21/3/4,3,1,12/3/20)
		
    END