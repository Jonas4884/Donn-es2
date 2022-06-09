
-- 35 - Le nombre total de voyage prevu a une heure precise dans une ville vers une destination precise
select count(id_voyage) from reserver where date_reservation IS NOT NULL;
-- 45 - Liste des vehicules actifs par jours
select * from vehicule ve inner join reserver r  
-- 46 -les voitures complets (pour un voyage  ?)
select * from vehicule  ve inner join reserver r where ve.nb_place=r.place;
-- 47 - les véhicules qui dépensent le plus et ceux qui sont souvent en panne (consommation d'essence ou réparation)
select id_vehicule from recevoir r inner join depense d inner join vehicule v on r.id_vehicule = d.id_vehicule and d.id_vehicule = v.id_vehicule
order by desc
limit 1;
-- 48 - Le vehicule qui a le plus gros depense
select(
select (max(d.essence)+max(d.maintenance)) as total from depense d inner join recevoir r on d.id_depense=r.id_depense)
from recevoir
limit 1;
-- 49- le nombre de voyage par villes (ville plus fréquentée et moins fréquentée)
select count(id_ville) as aller,nom_ville as village from ville vi inner join voyage vo on vo.id_ville_depart=vi.id_ville or vo.id_ville_arrivee=vi.id_ville
GROUP BY id_ville;
-- 50- le nombre de voiture en panne (à l'heure actuelle ?)
select * from vehicule where status=false in current_timestamp;
-- 51-Le nom des chauffeurs qui conduiront l'allerretour (vous prenez en compte la notion d'aller retour ? )
select nom from chauffeur ch inner join voyage vo inner join conduire co on vo.id_vehicule=co.id_vehicule on ch.id_chauffeur=co.id_chauffeur;
 -- 52-Combien de voyages ont été effectués tel ou tel jour, à tel ou tel endroit
 select * from voyage vo inner join ville vi on vo.id_ville_depart=vi.id_ville and vo.id_ville_arrivee=vi.id_ville;
/*
53- Cherchez les clients qui ont reservé pour fianarantsoa (OU UNE VILLE x EN FAIT) 
*/
select * from client c inner join reserver r
inner join ville v on v.nom_ville='fianarantsoa';

/*
54-Avoir le numéro du chauffeur qui conduisait le vehicule avec le matricule (Matricule) le (date)
*/
select contact from chauffeur ch inner join conduire co on ch.id_chauffeur=co.id_chauffeur;

/*55-aficher toutes les depenses de chaque véhicule*/

select * from recevoir r inner join depense d on r.id_vehicule=d.id_vehicule;

/*
56-les passagers les plus fréquents (pour les prix ou offres)
*/

select * from client c inner join offre o on c.id_client=o.id_offre 
ORDER BY DESC;

/*
57-Rechercher quels véhicules ont été conduit par tel ou tel chauffeur
*/
select * from conduire,chauffeur;

/*
58-liste des depenses de chaque vehicule
*/
select ((essence)*4100+maintenance) as depense_par_vehicule from depense;

/*
59-les infos des chauffeurs absents (qu'est ce qu'un chauffeur absent ? )
*/
select * from chauffeur c inner join conduire co on co.id_chauffeur IS NULL;

/*
60-les depenses de chaque voiture
*/
select * from vehicule inner join depense d 
inner join recevoir r 
on d.id_depense=r.id_depense;

/*
61-Depuis quand tel véhicule n'a plus été fonctionnel ou a recommencé à fonctionner
*/
select en_marche,en_panne,status from vehicule;

/*
62-afficher tous les matricule des voitures qui vont à une certaine ville, et leur état. (notion de voyage inclus ?)
*/
select v.matricule,id_ville_arrivee as ville,status from voyage v inner join vehicule vh on v.matricule = vh.matricule;

/*
63 -Quelle destination est la plus prisée donc remporte le plus
*/
select MAX(
COUNT(nom=nom)) as plus_prisée from ville;

/*
64 -les reservations des clients
*/
select * from reserver r inner join client c on r.id_client = c.id_client;

/*
65-nombres d'aller/retour faitent par chaque vehicule en une journée
*/
select COUNT(id_ville_depart,id_ville_arrivee) as aller_retour,matricule from voyage  v inner join vehicule vh on v.matricule=vh.matricule;

/*
66-les voyages annulées a cause du mauvais temps (faudrait penser à comment introduire la notion d'annuler un voyage ?)
*/
select * from voyage where temps = 'mauvais';

/*
67-Le nombre de mineur qui participe a un voyage
*/
select COUNT(age<18) as nombre_mineur from client c inner join voyage v on c.id_client = v.id_client;

/*
68-le nombre de clients
*/
select count(select DISTINCT(nom,prenom) from client) as nombre_client from client;

/*
69-liste des choix d'offre des clients
*/
select DISTINCT(label) as liste_choix from offre o inner join voyage v on o.id_offre = v.id_offre; 
