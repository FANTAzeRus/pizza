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
);