--date qu'un client a reservé
select date_voyage from voyage v inner join client c 
        on v.id_voyage=c.id_client 
        where first_name like "Ban"