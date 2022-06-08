-- 47 - les véhicules qui dépensent le plus et ceux qui sont souvent en panne (consommation d'essence ou réparation)

select id_vehicule from recevoir r inner join depense inner join vehicule v on  depense.id_depense = r.id_depense where vehicule.status="false";