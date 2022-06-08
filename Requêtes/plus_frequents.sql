-- 56-les passagers les plus fréquents (pour les prix ou offres)
select * from client c inner join offre o on c.id_client=o.id_offre 
ORDER BY DESC;