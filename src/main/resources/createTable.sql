create table transaction
(
    id serial
        constraint transaction_pk
            primary key,
    sale_day date,
    customer int,
    artwork int
);

alter table transaction
    add employee int;