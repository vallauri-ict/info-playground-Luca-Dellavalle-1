BEGIN TRANSACTION 

	INSERT INTO Dipendenti VALUES(4,"Pippo",5000);
	SAVE TRANSACTION Punto2
	
	INSERT INTO Dipendenti VALUES(5,"Toni", 6000);
	sAVE TRANSACTION Punto3

	SELECT * FROM Dipendenti

	ROLLBACK TRANSACTION Punto2
	
	SELECT * FROM Dipendenti

	COMMIT
