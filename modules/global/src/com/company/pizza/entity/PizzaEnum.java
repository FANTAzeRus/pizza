package com.company.pizza.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum PizzaEnum implements EnumClass<String> {

    SMALL("Small"),
    MEDIUM("Madium"),
    LARGE("Large");

    private String id;

    PizzaEnum(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static PizzaEnum fromId(String id) {
        for (PizzaEnum at : PizzaEnum.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}