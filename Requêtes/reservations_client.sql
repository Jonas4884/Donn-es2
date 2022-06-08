
-- 64 -les reservations des clients

select * from reserver r inner join client c on r.id_client = c.id_client;