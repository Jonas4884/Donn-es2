-- places disponibles dans un véhicule pour un voyage.
select nb_place_dispo, ve.matricule, date_voyage from vehicule ve inner join voyage vo on ve.matricule = vo.matricule; 