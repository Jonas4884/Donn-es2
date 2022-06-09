-- 68-le nombre de clients
select count(select DISTINCT(nom,prenom) from client) as nombre_client from client;
