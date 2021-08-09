package com.company.pizza.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.annotation.PostConstruct;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Table(name = "PIZZA_INGREDIENTS")
@Entity(name = "pizza_Ingredients")
public class Ingredients extends StandardEntity {
    private static final long serialVersionUID = 5393309377959975302L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PIZZA_ID")
    @NotNull
    private Pizza pizza;

    @JoinColumn(name = "TOPINGS_ID")
    @ManyToOne(fetch = FetchType.LAZY)
    private Topings topings;

    @Column(name = "AMOUNT", nullable = false)
    @NotNull
    private BigDecimal amount;

    public void setTopings(Topings topings) {
        this.topings = topings;
    }

    public Topings getTopings() {
        return topings;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Pizza getPizza() {
        return pizza;
    }

    public void setPizza(Pizza pizza) {
        this.pizza = pizza;
    }

    @PostConstruct
    public void postConstruct() {
        amount = BigDecimal.ONE;
    }
}