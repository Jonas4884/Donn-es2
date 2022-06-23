-- 1-Liste de vehicule qui ont des places libres : de tel ville vers tel ville
select matricule from voyage v 
    inner join ville vi on v.id_ville=vi.id_ville
    where nb_place_dispo>0
