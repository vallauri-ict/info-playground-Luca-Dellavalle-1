/* Selezionare nome, età e salario degli impiegati con più di 50 anni */
SELECT nome, eta, salario FROM Impiegato WHERE eta>50;

/* Selezionare le informazioni degli acquisti di item=2 */
SELECT * FROM Acquisto WHERE item=2;

/* Selezionare nome, titolo e salario dei programmatori con salario > 1400 */
SELECT nome, titolo, salario FROM Impiegato WHERE salario > 1400 AND titolo='Programmatore';

/* Selezionare nome di tutti i programmatori e analisti */
SELECT nome FROM Impiegato WHERE titolo ='Programmatore' OR titolo = 'Analista';

/* Le diverse età degli impiegati */
SELECT DISTINCT eta from Impiegato;

/* Stipendio medio degli impiegati */
SELECT AVG(salario) from Impiegato;

/* Tutti i dati di impiegato ordinari per salario decrescente */
SELECT * FROM Impiegato ORDER BY salario DESC;

/* Tutti i dati di impiegato ordinari per salario e eta decrescente */
SELECT * FROM Impiegato ORDER BY salario DESC,eta DESC;

/* Tutti i dati degli impiegati Bea, Lurenz e Deto */
SELECT * FROM Impiegato WHERE nome IN ('Bea', 'Lurenz', 'Deto');

/* Tutti i dati degli impiegati tranne Bea, Lurenz e Deto */
SELECT * FROM Impiegato WHERE nome NOT IN ('Bea', 'Lurenz', 'Deto');

/* Tutti i dati degli impiegati con età compresa tra 20 e 30 */
SELECT * FROM Impiegato WHERE eta BETWEEN 20 AND 30; /* equivalente a eta>=20 AND eta <=30 */

/* Per ogni acquisto il nome del cliente e il prezzo del prodotto */
SELECT c.nome, a.prezzo FROM Acquisto a, Cliente c WHERE a.idCliente = c.idCliente; 
/* equivalente alla INNERJOIN, solitamente se non per join particolari non si specifica */

