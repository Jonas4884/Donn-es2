-- liste des depenses de chaque vehicule
select ((essence)*4100+maintenance) as depense_par_vehicule from depense d inner join vehicule v on d.id_vehicule=v.id_vehicule;
