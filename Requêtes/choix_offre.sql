-- 69-liste des choix d'offre des clients

select DISTINCT(label) as liste_choix from offre o inner join voyage v on o.id_offre = v.id_offre; 
