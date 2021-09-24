/*Le città da cui partono per Milano in ordine alfabetico*/
SELECT DISTINCT v.CittaPartenza
FROM Volo v
WHERE v.CittaArrivo='Milano'
ORDER BY v.CittaPartenza


/* Città con aereoporto con numero di piste non noto */
SELECT a.Citta
FROM Aeroporto a 
WHERE a.NumPiste IS NULL


/* Per ogni volo Misto (sia merci che passeggeri): codice volo e dati di trasporto*/

SELECT * 
FROM Aereo a, Volo v
WHERE a.TipoAereo= v.TipoAereo
AND a.QtaMerci>0
AND a.NumPasseggeri>0