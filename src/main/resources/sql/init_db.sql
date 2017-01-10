drop table if exists paid_products;
drop table if exists client;


create table client
(
client_id varchar primary key
);

create table paid_products
(
product_id int primary key,
quantity int,
purchase_time date,
client_identifier varchar REFERENCES client(client_id) on delete cascade on update cascade
);