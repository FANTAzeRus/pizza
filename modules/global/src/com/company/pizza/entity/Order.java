package com.company.pizza.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.EmbeddedParameters;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.annotation.PostConstruct;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Table(name = "PIZZA_ORDER")
@Entity(name = "pizza_Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = 7434331762778569833L;

    @Column(name = "NUMBER_")
    private String number;

    @NotNull
    @Column(name = "DATE_", nullable = false)
    private LocalDateTime date;

    @NotNull
    @Column(name = "STATUS", nullable = false)
    private String status;

    @Column(name = "TOTAL_AMOUNT")
    private BigDecimal totalAmount;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AssociationOverrides({
            @AssociationOverride(name = "courier", joinColumns = @JoinColumn(name = "DELIVERY_COURIER_ID"))
    })
    @AttributeOverrides({
            @AttributeOverride(name = "clientName", column = @Column(name = "DELIVERY_CLIENT_NAME")),
            @AttributeOverride(name = "phoneNumber", column = @Column(name = "DELIVERY_PHONE_NUMBER")),
            @AttributeOverride(name = "email", column = @Column(name = "DELIVERY_EMAIL")),
            @AttributeOverride(name = "adress", column = @Column(name = "DELIVERY_ADRESS")),
            @AttributeOverride(name = "comment", column = @Column(name = "DELIVERY_COMMENT_"))
    })
    private Delivery delivery;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "order")
    private List<OrderItem> items;

    public List<OrderItem> getItems() {
        return items;
    }

    public void setItems(List<OrderItem> items) {
        this.items = items;
    }

    public Delivery getDelivery() {
        return delivery;
    }

    public void setDelivery(Delivery delivery) {
        this.delivery = delivery;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public OrderStatusEnum getStatus() {
        return status == null ? null : OrderStatusEnum.fromId(status);
    }

    public void setStatus(OrderStatusEnum status) {
        this.status = status == null ? null : status.getId();
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @PostConstruct
    public void postConstruct() {
        date = LocalDateTime.now();
        totalAmount = BigDecimal.ZERO;
    }
}