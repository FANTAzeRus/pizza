alter table PIZZA_ORDER add constraint FK_PIZZA_ORDER_ON_DELIVER foreign key (DELIVER_ID) references SEC_USER(ID);
alter table PIZZA_ORDER add constraint FK_PIZZA_ORDER_ON_ORDER_ITEM foreign key (ORDER_ITEM_ID) references PIZZA_ORDER_ITEM(ID);
create index IDX_PIZZA_ORDER_ON_DELIVER on PIZZA_ORDER (DELIVER_ID);
create index IDX_PIZZA_ORDER_ON_ORDER_ITEM on PIZZA_ORDER (ORDER_ITEM_ID);
