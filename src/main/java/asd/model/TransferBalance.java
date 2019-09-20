/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

/**
 *
 * @author Michelle
 */
public class TransferBalance {
    private String fromOpalID;
    private String toOpalID;
    private double value;
    private String customerID;
    private String transferDate;

    public TransferBalance() {
    }

    public TransferBalance(String fromOpalID, String toOpalID, double value, String customerID, String transferDate) {
        this.fromOpalID = fromOpalID;
        this.toOpalID = toOpalID;
        this.value = value;
        this.customerID = customerID;
        this.transferDate = transferDate;
    }

    public String getTransferDate() {
        return transferDate;
    }

    public void setTransferDate(String transferDate) {
        this.transferDate = transferDate;
    }
    
    public String getFromOpalID() {
        return fromOpalID;
    }

    public void setFromOpalID(String fromOpalID) {
        this.fromOpalID = fromOpalID;
    }

    public String getToOpalID() {
        return toOpalID;
    }

    public void setToOpalID(String toOpalID) {
        this.toOpalID = toOpalID;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }
    
    
}
