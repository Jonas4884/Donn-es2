-- 53- Cherchez les clients qui ont reservé pour fianarantsoa (OU UNE VILLE x EN FAIT)
select * from client c inner join reserver r
inner join ville v on v.nom_ville='fianarantsoa';
