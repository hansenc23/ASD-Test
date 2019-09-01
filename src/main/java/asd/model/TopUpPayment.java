/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
/**
 *
 * @author Hieu
 */
public class TopUpPayment {
    
    private String customerId;
    private String opalId;
    private double value;
    private String date;

    public TopUpPayment() {
    }

    public TopUpPayment(String customerId, String opalId, double value, String date) {
        this.customerId = customerId;
        this.opalId = opalId;
        this.value = value;
        this.date = date;
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

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
}
