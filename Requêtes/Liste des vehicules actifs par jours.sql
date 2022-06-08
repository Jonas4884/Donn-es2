-- 45 - Liste des vehicules actifs par jours
select * from vehicule ve inner join reserver r  where avg(extract(day from date_reservation));