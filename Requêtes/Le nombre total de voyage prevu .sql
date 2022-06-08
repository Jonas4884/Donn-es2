-- 35 - Le nombre total de voyage prevu a une heure precise dans une ville vers une destination precise
select count(id_voyage) from reserver where date_reservation IS NOT NULL;