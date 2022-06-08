-- 65-nombres d'aller/retour faitent par chaque vehicule en une journée

select COUNT(id_ville_depart,id_ville_arrivee) as aller_retour,matricule from voyage  v inner join vehicule vh on v.matricule=vh.matricule;
