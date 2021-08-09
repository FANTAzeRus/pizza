alter table PIZZA_ORDER_ITEM rename column quantity to quantity__u27727 ;
alter table PIZZA_ORDER_ITEM alter column quantity__u27727 drop not null ;
-- alter table PIZZA_ORDER_ITEM add column ORDER_ID uuid ^
-- update PIZZA_ORDER_ITEM set ORDER_ID = <default_value> ;
-- alter table PIZZA_ORDER_ITEM alter column ORDER_ID set not null ;
alter table PIZZA_ORDER_ITEM add column ORDER_ID uuid not null ;
alter table PIZZA_ORDER_ITEM add column QUANTITY integer ^
update PIZZA_ORDER_ITEM set QUANTITY = 0 where QUANTITY is null ;
alter table PIZZA_ORDER_ITEM alter column QUANTITY set not null ;
