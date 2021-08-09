package com.company.pizza.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum OrderStatusEnum implements EnumClass<String> {

    CREATED("создан"),
    PAID("оалачен"),
    COOKING("готовится"),
    COOKED("готов"),
    DELIVERY("доставка"),
    DELIVERED("доставлен"),
    CANCLELED("отменен");

    private String id;

    OrderStatusEnum(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static OrderStatusEnum fromId(String id) {
        for (OrderStatusEnum at : OrderStatusEnum.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}