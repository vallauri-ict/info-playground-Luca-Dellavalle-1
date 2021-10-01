
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

/**/