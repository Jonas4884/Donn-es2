-- 62-afficher tous les matricule des voitures qui vont à une certaine ville, et leur état. (notion de voyage inclus ?)

select v.matricule,id_ville_arrivee as ville,status from voyage v inner join vehicule vh on v.matricule = vh.matricule;
