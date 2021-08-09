alter table PIZZA_TOPINGS rename column ingredients_id to ingredients_id__u94140 ;
alter table PIZZA_TOPINGS drop constraint FK_PIZZA_TOPINGS_ON_INGREDIENTS ;
drop index IDX_PIZZA_TOPINGS_ON_INGREDIENTS ;
