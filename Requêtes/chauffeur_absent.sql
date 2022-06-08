-- 59-les infos des chauffeurs absents (qu'est ce qu'un chauffeur absent ? )
select * from chauffeur c inner join conduire co on co.id_chauffeur IS NULL;
