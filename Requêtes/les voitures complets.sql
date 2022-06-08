-- 46 -les voitures complets (pour un voyage  ?)
select * from vehicule  ve inner join reserver r inner join voyage v  on r.id_vehicule=v.id_vehicule  where ve.nb_place=r.place;