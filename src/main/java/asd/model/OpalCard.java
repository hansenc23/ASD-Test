/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
/**
 *
 * @author Michelle
 */
public class OpalCard implements Serializable {
    private String opalID;
    private double balance;
    private String type;
    private String securityCode;
    private String customerID;

    public OpalCard() {
    }

    public OpalCard(String opalID) {
        this.opalID = opalID;
    }

    public OpalCard(String opalID, String securityCode) {
        this.opalID = opalID;
        this.securityCode = securityCode;
    }
    
    public OpalCard(String opalID, double balance, String type, String securityCode) {
        this.opalID = opalID;
        this.balance = balance;
        this.type = type;
        this.securityCode = securityCode;
    }

    public OpalCard(String opalID, double balance, String type, String securityCode, String customerID) {
        this.opalID = opalID;
        this.balance = balance;
        this.type = type;
        this.securityCode = securityCode;
        this.customerID = customerID;
    }

    public String getOpalID() {
        return opalID;
    }

    public void setOpalID(String opalID) {
        this.opalID = opalID;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSecurityCode() {
        return securityCode;
    }

    public void setSecurityCode(String securityCode) {
        this.securityCode = securityCode;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }
    
}
