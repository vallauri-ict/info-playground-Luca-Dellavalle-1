
/* Per ciascun museo di Londra il numero di opere di artisti*/

SELECT count(*) as NumeroOpere
FROM Artista a, Opera o, Museo m
WHERE a.Nazionalita='IT'

/*Il nome dei musei di Londra che non hanno opere di Tiziano*/

SELECT m.NomeMuseo
FROM Museo m
WHERE m.Citta = 'Londra'
AND NOT EXISTS (SELECT *
				FROM Opera o
				WHERE o.NomeArtista = 'Tiziano'
				AND o.NomeMuseo = m.NomeMuseo)

/* Il nome dei musei di Londra che hanno solo opere di Tiziano*/

SELECT m.NomeMuseo
FROM Museo m
WHERE m.Citta = 'Londra'
AND NOT EXISTS (SELECT *
				FROM Opera o
				WHERE o.NomeArtista <> 'Tiziano'
				AND o.NomeMuseo = m.NomeMuseo)

/* */

SELECT m.NomeMuseo
FROM Museo m
WHERE m.Citta = 'Londra' AND Not Exists
		( SELECT *
		FROM Opera o
		WHERE o.NomeArtista = 'Tiziano'
		AND m.NomeMuseo = o.NomeMuseo)

/* Per ciascun artista, il nome dell’artista ed il numero di sue opere conservate alla
“Galleria degli Uffizi”*/

SELECT o.NomeArtista, COUNT(*) AS NOpere
FROM Opera o
WHERE o.NomeMuseo = 'Uffizi'
GROUP BY o.NomeArtista

/* I musei che conservano almeno TOT opere di artisti italiani*/

SELECT o.NomeMuseo, COUNT(*) as n
FROM Opera o, Artista a
WHERE a.Nazionalita = 'IT' AND o.NomeArtista = a.NomeArtista
GROUP BY o.NomeMuseo
HAVING Count (*) = 1 /*ritorna il record se ho almeno quello indicato*/

/*Il titolo dell’opera ed il nome dell’artista delle opere di artisti italiani che non hanno personaggi*/

SELECT o.Titolo, a.NomeArtista
FROM Opera o, Artista a
WHERE a.Nazionalita = 'IT' 
AND o.NomeArtista=a.NomeArtista
AND NOT EXISTS (SELECT *
				FROM Personaggio p
				WHERE p.Codice=o.Codice)

/*UPDATE*/

UPDATE Artista
SET Nazionalita='ES'
WHERE NomeArtista='Picasso'