SELECT 'Internet', Data
from VenditeInternet 
UNION /*operatore identico alla OR*/
SELECT 'Negozio', Data
from VenditeNegozio
ORDER BY Data desc


SELECT Data
from VenditeInternet 
INTERSECT /*operatore identico alla AND*/
SELECT Data
from VenditeNegozio
ORDER BY Data desc


