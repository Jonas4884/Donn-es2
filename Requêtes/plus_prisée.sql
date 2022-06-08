-- 63 -Quelle destination est la plus prisée donc remporte le plus

select MAX(
COUNT(nom_ville=nom_ville)) as plus_prisée from ville;