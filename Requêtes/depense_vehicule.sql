-- 55-aficher toutes les depenses de chaque véhicule
select * from recevoir r inner join depense d on r.id_vehicule=d.id_vehicule;
