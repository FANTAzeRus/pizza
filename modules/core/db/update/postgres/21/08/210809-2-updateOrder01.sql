-- alter table PIZZA_ORDER add column ORDER_ITEM_ID uuid ^
-- update PIZZA_ORDER set ORDER_ITEM_ID = <default_value> ;
-- alter table PIZZA_ORDER alter column ORDER_ITEM_ID set not null ;
alter table PIZZA_ORDER add column ORDER_ITEM_ID uuid not null ;
