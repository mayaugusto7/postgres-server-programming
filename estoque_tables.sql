create table fruits_in_stock (
    name text primary key,
    in_stock integer not null,
    reserved integer not null default 0,
    check (in_stock between 0 and 1000 ),
    check (reserved <= in_stock)
);

create table fruit_offer (
    offer_id serial primary key,
    recipient_name text,
    offer_date timestamp default current_timestamp,
    fruit_name text references fruits_in_stock,
    offered_amount integer
);