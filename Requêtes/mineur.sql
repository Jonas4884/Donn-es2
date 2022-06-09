-- 67-Le nombre de mineur qui participe a un voyage
select COUNT(cin IS NULL) as nombre_mineur from client c inner join voyage v on c.id_client = v.id_client;

