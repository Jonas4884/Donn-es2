-- 49- le nombre de voyage par villes (ville plus fréquentée et moins fréquentée)

select count(id_ville) as aller,nom_ville as ville from ville vi inner join voyage vo on vo.id_ville_depart=vi.id_ville or vo.id_ville_arrivee=vi.id_ville
GROUP BY id_ville;