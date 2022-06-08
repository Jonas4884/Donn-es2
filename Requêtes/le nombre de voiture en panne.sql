-- 50- le nombre de voiture en panne (à l'heure actuelle ?)

select * from vehicule where status=false in current_timestamp;