/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;



import java.io.Serializable;
import java.util.*;

/**
 *
 * @author Hieu
 */
public class Paymentmethods implements Serializable {
    private ArrayList<Paymentmethod> paymentMethods = new ArrayList<>();
    public Paymentmethods() {
    }
    public ArrayList<Paymentmethod> getList() {
            return paymentMethods;
    }
    public void addPaymentMethods(Paymentmethod pmt) {
            paymentMethods.add(pmt);
        }
    
    public void removePaymentMethods(Paymentmethod pmt) {
            paymentMethods.remove(pmt);
        }
        
    public Paymentmethod cardDetails(String cardNumber) {
            for (Paymentmethod pmt : paymentMethods) {
                if(pmt.getCardNumber().equals(cardNumber)) {
                    return pmt;
                }
            }
            return null;
        }
}