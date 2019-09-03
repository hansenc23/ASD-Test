/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

<<<<<<< HEAD
=======
import java.io.Serializable;
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
/**
 *
 * @author Hieu
 */
public class TopUpPayment {
<<<<<<< HEAD
    private String firstName;
    private String lastName; 
    private String cardNumber;
    private String expiryMonth;
    private String expiryYear;
    private String currentDate;
    private String cvv;
    private Double amount;
    private String opalId;
    public TopUpPayment(String firstName, String lastName, String cardNumber, String expiryMonth, String expiryYear, String cvv, Double amount, String opalId, String currentDate) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.cardNumber = cardNumber;
        this.expiryMonth = expiryMonth;
        this.expiryYear = expiryYear;
        this.cvv = cvv;
        this.amount = amount;
        this.opalId = opalId;
        this.currentDate = currentDate;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the cardNumber
     */
    public String getCardNumber() {
        return cardNumber;
    }

    /**
     * @param cardNumber the cardNumber to set
     */
    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }


    /**
     * @return the currentDate
     */
    public String getCurrentDate() {
        return currentDate;
    }

    /**
     * @param currentDate the currentDate to set
     */
    public void setCurrentDate(String currentDate) {
        this.currentDate = currentDate;
    }

    /**
     * @return the cvv
     */
    public String getCvv() {
        return cvv;
    }

    /**
     * @param cvv the cvv to set
     */
    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    /**
     * @return the amount
     */
    public Double getAmount() {
        return amount;
    }

    /**
     * @param amount the amount to set
     */
    public void setAmount(Double amount) {
        this.amount = amount;
    }

    /**
     * @return the opalId
     */
=======
    
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

>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
    public String getOpalId() {
        return opalId;
    }

<<<<<<< HEAD
    /**
     * @param opalId the opalId to set
     */
=======
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
    public void setOpalId(String opalId) {
        this.opalId = opalId;
    }

<<<<<<< HEAD
    /**
     * @return the expiryMonth
     */
    public String getExpiryMonth() {
        return expiryMonth;
    }

    /**
     * @param expiryMonth the expiryMonth to set
     */
    public void setExpiryMonth(String expiryMonth) {
        this.expiryMonth = expiryMonth;
    }

    /**
     * @return the expiryYear
     */
    public String getExpiryYear() {
        return expiryYear;
    }

    /**
     * @param expiryYear the expiryYear to set
     */
    public void setExpiryYear(String expiryYear) {
        this.expiryYear = expiryYear;
    }
    
    
    
=======
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
    
    
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
}
