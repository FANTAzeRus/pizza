alter table PIZZA_TOPINGS add constraint FK_PIZZA_TOPINGS_ON_INGREDIENTS foreign key (INGREDIENTS_ID) references PIZZA_INGREDIENTS(ID);
create index IDX_PIZZA_TOPINGS_ON_INGREDIENTS on PIZZA_TOPINGS (INGREDIENTS_ID);
