-- 60-les depenses de chaque voiture
select * from vehicule inner join depense d 
inner join recevoir r 
on d.id_depense=r.id_depense;