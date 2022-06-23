--client qui ont acheté l'offre premium
select * from client c inner join offre o on c.id_client=o.id_offre where o.label="premium";
