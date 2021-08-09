alter table PIZZA_ORDER rename column deliver_id to deliver_id__u01102 ;
alter table PIZZA_ORDER alter column deliver_id__u01102 drop not null ;
alter table PIZZA_ORDER drop constraint FK_PIZZA_ORDER_ON_DELIVER ;
drop index IDX_PIZZA_ORDER_ON_DELIVER ;
-- alter table PIZZA_ORDER add column DELIVERY_COURIER_ID uuid ^
-- update PIZZA_ORDER set DELIVERY_COURIER_ID = <default_value> ;
-- alter table PIZZA_ORDER alter column delivery_courier_id set not null ;
alter table PIZZA_ORDER add column DELIVERY_COURIER_ID uuid not null ;
alter table PIZZA_ORDER add column DELIVERY_ADRESS varchar(255) ^
update PIZZA_ORDER set DELIVERY_ADRESS = '' where DELIVERY_ADRESS is null ;
alter table PIZZA_ORDER alter column DELIVERY_ADRESS set not null ;
alter table PIZZA_ORDER add column DELIVERY_PHONE_NUMBER varchar(255) ^
update PIZZA_ORDER set DELIVERY_PHONE_NUMBER = '' where DELIVERY_PHONE_NUMBER is null ;
alter table PIZZA_ORDER alter column DELIVERY_PHONE_NUMBER set not null ;
alter table PIZZA_ORDER add column DELIVERY_COMMENT_ text ;
alter table PIZZA_ORDER add column DELIVERY_EMAIL varchar(255) ^
update PIZZA_ORDER set DELIVERY_EMAIL = '' where DELIVERY_EMAIL is null ;
alter table PIZZA_ORDER alter column DELIVERY_EMAIL set not null ;
alter table PIZZA_ORDER add column DELIVERY_CLIENT_NAME varchar(255) ^
update PIZZA_ORDER set DELIVERY_CLIENT_NAME = '' where DELIVERY_CLIENT_NAME is null ;
alter table PIZZA_ORDER alter column DELIVERY_CLIENT_NAME set not null ;
