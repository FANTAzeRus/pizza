alter table PIZZA_INGREDIENTS add column AMOUNT decimal(19, 2) ^
update PIZZA_INGREDIENTS set AMOUNT = 0 where AMOUNT is null ;
alter table PIZZA_INGREDIENTS alter column AMOUNT set not null ;
-- update PIZZA_INGREDIENTS set PIZZA_ID = <default_value> where PIZZA_ID is null ;
alter table PIZZA_INGREDIENTS alter column PIZZA_ID set not null ;
