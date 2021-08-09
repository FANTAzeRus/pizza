alter table PIZZA_ORDER rename column order_item_id to order_item_id__u69805 ;
alter table PIZZA_ORDER alter column order_item_id__u69805 drop not null ;
alter table PIZZA_ORDER drop constraint FK_PIZZA_ORDER_ON_ORDER_ITEM ;
drop index IDX_PIZZA_ORDER_ON_ORDER_ITEM ;
