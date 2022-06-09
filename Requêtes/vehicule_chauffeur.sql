 -- 57-Rechercher quels véhicules ont été conduit par tel ou tel chauffeur
select * from conduire co inner join chauffeur ch on co.id_chauffeur=ch.id_chauffeur;