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
    NUMBER_ varchar(255),
    DATE_ timestamp not null,
    STATUS varchar(50) not null,
    TOTAL_AMOUNT decimal(19, 2),
    DELIVER_ID uuid not null,
    ORDER_ITEM_ID uuid not null,
    --
    primary key (ID)
);