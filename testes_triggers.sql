insert into fruits_in_stock(name, in_stock, reserved) values ('APPLE',500, 0);
insert into fruits_in_stock(name, in_stock, reserved) values ('ORANGE',500, 0);

insert into fruit_offer(recipient_name,fruit_name,offered_amount) 
values('Bob','APPLE',100);

update fruit_offer set offered_amount = 115 where offer_id = 1;

update fruits_in_stock set in_stock = 100 where name = 'APPLE';

update fruit_offer set offered_amount = 1100 where offer_id = 1;

delete from fruit_offer where offer_id = 1;

select * from fruits_in_stock;
select * from fruit_offer;
