 -- 52-Combien de voyages ont été effectués tel ou tel jour, à tel ou tel endroit

 select * from voyage vo inner join ville vi on vo.id_ville_depart=vi.id_ville and vo.id_ville_arrivee=vi.id_ville;
