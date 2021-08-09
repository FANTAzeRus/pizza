-- begin PIZZA_PIZZA
create table PIZZA_PIZZA (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    SIZE_ varchar(50) not null,
    CALORIES decimal(19, 2) not null,
    PRICE decimal(19, 2) not null,
    DESCRIPTION text,
    --
    primary key (ID)
)^
-- end PIZZA_PIZZA
-- begin PIZZA_PAYMENT
create table PIZZA_PAYMENT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_ID uuid not null,
    AMOUNT decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end PIZZA_PAYMENT
-- begin PIZZA_INGREDIENTS
create table PIZZA_INGREDIENTS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PIZZA_ID uuid not null,
    TOPINGS_ID uuid,
    AMOUNT decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end PIZZA_INGREDIENTS
-- begin PIZZA_TOPINGS
create table PIZZA_TOPINGS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    SPICY boolean not null,
    --
    primary key (ID)
)^
-- end PIZZA_TOPINGS
-- begin PIZZA_ORDER_ITEM
create table PIZZA_ORDER_ITEM (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_ID uuid not null,
    PIZZA_ID uuid not null,
    QUANTITY integer not null,
    --
    primary key (ID)
)^
-- end PIZZA_ORDER_ITEM
-- begin PIZZA_ORDER
create table PIZZA_ORDER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DELIVERY_COURIER_ID uuid not null,
    DELIVERY_CLIENT_NAME varchar(255) not null,
    DELIVERY_PHONE_NUMBER varchar(255) not null,
    DELIVERY_EMAIL varchar(255) not null,
    DELIVERY_ADRESS varchar(255) not null,
    DELIVERY_COMMENT_ text,
    --
    NUMBER_ varchar(255),
    DATE_ timestamp not null,
    STATUS varchar(50) not null,
    TOTAL_AMOUNT decimal(19, 2),
    --
    primary key (ID)
)^
-- end PIZZA_ORDER
