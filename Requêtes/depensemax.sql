-- 48 - Le vehicule qui a le plus gros depense
select(
select (max(d.essence)+max(d.maintenance)) as total from depense d inner join recevoir r on d.id_depense=r.id_depense)
from recevoir
limit 1;