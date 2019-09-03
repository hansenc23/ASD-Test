/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
<<<<<<< HEAD
import java.util.Date;
=======
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
/**
 *
 * @author Hieu
 */
public class Paymentmethod implements Serializable {
<<<<<<< HEAD
    private String firstName;
    private String lastName; 
    private String cardNumber;
    private String expiryMonth;
    private String expiryYear;
    private String cvv;
    public Paymentmethod(String firstName, String lastName, String cardNumber, String expiryMonth, String expiryYear, String cvv) {
=======
    
    private String firstName;
    private String lastName; 
    private String cardNumber;
    private int expiryMonth;
    private int expiryYear;
    private int cvv;
    
    public Paymentmethod(String firstName, String lastName, String cardNumber, int expiryMonth, int expiryYear, int cvv) {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        this.firstName = firstName;
        this.lastName = lastName;
        this.cardNumber = cardNumber;
        this.expiryMonth = expiryMonth;
        this.expiryYear = expiryYear;
        this.cvv = cvv;
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
     * @return the cvv
     */
<<<<<<< HEAD
    public String getCvv() {
=======
    public int getCvv() {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        return cvv;
    }

    /**
     * @param cvv the cvv to set
     */
<<<<<<< HEAD
    public void setCvv(String cvv) {
=======
    public void setCvv(int cvv) {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        this.cvv = cvv;
    }

    /**
     * @return the expiryMonth
     */
<<<<<<< HEAD
    public String getExpiryMonth() {
=======
    public int getExpiryMonth() {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        return expiryMonth;
    }

    /**
     * @param expiryMonth the expiryMonth to set
     */
<<<<<<< HEAD
    public void setExpiryMonth(String expiryMonth) {
=======
    public void setExpiryMonth(int expiryMonth) {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        this.expiryMonth = expiryMonth;
    }

    /**
     * @return the expiryYear
     */
<<<<<<< HEAD
    public String getExpiryYear() {
=======
    public int getExpiryYear() {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        return expiryYear;
    }

    /**
     * @param expiryYear the expiryYear to set
     */
<<<<<<< HEAD
    public void setExpiryYear(String expiryYear) {
=======
    public void setExpiryYear(int expiryYear) {
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        this.expiryYear = expiryYear;
    }
    
    
    
}
