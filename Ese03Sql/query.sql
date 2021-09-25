INSERT INTO Attori VALUES
(10,'Samuele',2010,'IT'),
(11,'Luca',2010,'IT')

/* Film Fellini prodotti dopo 1960*/
SELECT Titolo 
FROM Film
WHERE Regista='Fellini'
AND AnnoProduzione>1960

/*il titolo e la durata del film di fantascienza giapponesi o francesi prodotti dopo il 1990*/

SELECT f.Titolo, f.Durata
FROM Film f
WHERE f.Genere='fantascienza'
AND f.Nazionalita='FR' OR f.Nazionalita='JP'
AND f.AnnoProduzione>1990

/*il titolo del film di fantascienza giapponesi prodotti dopo il 1990 oppure i francesi */
SELECT f.Titolo
FROM Film f
WHERE f.Genere='fantascienza'
AND ((f.Nazionalita='JP' AND f.AnnoProduzione>1990) OR f.Nazionalita='FR')

/*i titoli dei film dello stesso regista di Casablanca*/
/*select annidate, viene eseguita prima la più interna*/
SELECT f.Titolo
FROM Film f
WHERE f.Regista=(SELECT f1.Regista FROM Film f1 WHERE f1.Titolo='Casablanca')

/*il titolo ed il genere dei film proiettati il giorno di Natale nel 2004*/
/*DISTINCT non ripete due valori uguali*/
SELECT DISTINCT f.Titolo, f.Genere
FROM Film f,Proiezioni p
WHERE f.CodFilm=p.CodFilm
AND p.DataProiezione='20041225'

/*il titolo ed il genere dei film proiettati il giorno di Natale a Napoli nel 2004*/
SELECT DISTINCT f.Titolo, f.Genere
FROM Film f, Sale s, Proiezioni p 
WHERE f.CodFilm = p.CodFilm 
AND p.CodSala = s.CodSala
AND s.Citta='Napoli' 
AND p.DataProiezione='20041225';

/*i nomi delle sale dei film proiettati il giorno di Natale a Napoli nel 2004 con Robbie Williams*/
SELECT DISTINCT s.Nome
FROM Film f, Sale s, Proiezioni p, Recita r
WHERE 
(f.CodFilm = p.CodFilm AND p.CodSala = s.CodSala AND r.CodFilm=f.CodFilm)
AND s.Citta='Napoli' AND p.DataProiezione='20041225'
AND r.CodAttore=(
	SELECT CodAttore
	FROM Attori
	WHERE Nome='Robin Williams');

/* il titolo  dei film in cui recitano M. Mastroianni e S. Loren*/
SELECT f.Titolo
FROM Film f, Recita r, Attori a
WHERE a.CodAttore=r.codAttore
AND f.CodFilm=r.codFilm
AND f.CodFilm=(SELECT f.CodFilm
FROM Film f, Recita r, Attori a
WHERE a.CodAttore=r.CodAttore
AND f.CodFilm=r.CodFilm
AND a.Nome='Mastroianni')
AND a.Nome='Loren'


/* soluzione 2*/
SELECT f.Titolo
FROM Film f
WHERE 'Mastroianni' IN(SELECT * 
						FROM Attori a, Recite r
						WHERE r.CodAttore=a.CodAttore
						AND r.CodFilm=.f.CodFilm)
AND 'Loren' IN(SELECT * 
				FROM Attori a, Recite r
				WHERE r.CodAttore=a.CodAttore
				AND r.CodFilm=.f.CodFilm)