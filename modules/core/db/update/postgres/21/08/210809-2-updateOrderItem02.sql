alter table PIZZA_ORDER_ITEM rename column order_id to order_id__u50811 ;
alter table PIZZA_ORDER_ITEM alter column order_id__u50811 drop not null ;
alter table PIZZA_ORDER_ITEM drop constraint FK_PIZZA_ORDER_ITEM_ON_ORDER ;
drop index IDX_PIZZA_ORDER_ITEM_ON_ORDER ;
