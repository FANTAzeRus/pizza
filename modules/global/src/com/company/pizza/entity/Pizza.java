package com.company.pizza.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.List;

@Table(name = "PIZZA_PIZZA")
@Entity(name = "pizza_Pizza")
@NamePattern("%s|name")
public class Pizza extends StandardEntity {
    private static final long serialVersionUID = 4186425602332203836L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    private String name;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "pizza")
    private List<Ingredients> ingredients;

    @NotNull
    @Column(name = "SIZE_", nullable = false)
    private String size;

    @Column(name = "CALORIES", nullable = false)
    @NotNull
    private BigDecimal calories;

    @Column(name = "PRICE", nullable = false)
    @NotNull
    private BigDecimal price;

    @Lob
    @Column(name = "DESCRIPTION")
    private String description;

    public List<Ingredients> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<Ingredients> ingredients) {
        this.ingredients = ingredients;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getCalories() {
        return calories;
    }

    public void setCalories(BigDecimal calories) {
        this.calories = calories;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public PizzaEnum getSize() {
        return size == null ? null : PizzaEnum.fromId(size);
    }

    public void setSize(PizzaEnum size) {
        this.size = size == null ? null : size.getId();
    }
}