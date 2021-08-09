-- alter table PIZZA_ORDER_ITEM add column ORDER_ID uuid ^
-- update PIZZA_ORDER_ITEM set ORDER_ID = <default_value> ;
-- alter table PIZZA_ORDER_ITEM alter column ORDER_ID set not null ;
alter table PIZZA_ORDER_ITEM add column ORDER_ID uuid not null ;
