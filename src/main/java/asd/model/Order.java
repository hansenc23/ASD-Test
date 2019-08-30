/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

/**
 *
 * @author aasdd
 */
public class Order {
    
    private String orderId;
    private String customerId;
    private String opalId;
    private String opalType;
    private String orderDate;
    private double value;
    private String status;

    
    public Order() {
    }
    
    public Order(String orderId, String customerId, String opalId, String opalType, String orderDate, double value, String status) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.opalId = opalId;
        this.opalType = opalType;
        this.orderDate = orderDate;
        this.value = value;
        this.status = status;
    }


    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getOpalId() {
        return opalId;
    }

    public void setOpalId(String opalId) {
        this.opalId = opalId;
    }

    public String getOpalType() {
        return opalType;
    }

    public void setOpalType(String opalType) {
        this.opalType = opalType;
    }
    
    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}
