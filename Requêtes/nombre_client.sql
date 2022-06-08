-- 68-le nombre de clients
select count(select DISTINCT(nom,prenom)) as nombre_client from client;
