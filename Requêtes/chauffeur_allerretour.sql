-- 51-Le nom des chauffeurs qui conduiront l'allerretour (vous prenez en compte la notion d'aller retour ? )

select nom from chauffeur ch inner join voyage vo inner join conduire co on vo.id_vehicule=co.id_vehicule on ch.id_chauffeur=co.id_chauffeur;
