/*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package asd.test;

import asd.model.Paymentmethod;
import asd.model.Paymentmethods;
import asd.model.User;
import asd.model.Users;
import asd.model.dao.MongoDBConnector;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Random;
import junit.framework.Assert;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.BeforeClass;

/**
 *
 * @author Hieu
 */
public class TopUpManagementUnitTest {
    private static MongoDBConnector dbconnector;
    public TopUpManagementUnitTest() { 
     
     }
    @BeforeClass
    public static void createDbclass() throws UnknownHostException {
        Random rand = new Random();
        int n = rand.nextInt(90000) + 10000;
        String n1 = Integer.toString(n);
        dbconnector = new MongoDBConnector();
        User user = new User("test","test","kaido1@gmail.com","qwe123456","qwe12","0913470400","false",n1);
        dbconnector.add(user);
        System.out.println("Establish connection to Db");
    }
    //get the paymentmethods  array list
    public  ArrayList<Paymentmethod> getPayments() throws UnknownHostException{
        Users users =dbconnector.loadUsers(); 
        User user = users.login("kaido1@gmail.com", "qwe123456");
        Paymentmethods pmtmethods = new Paymentmethods();
        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
        pmtmethods  =  dbconnector.getPaymentMethods(user);
        paymentMethods = pmtmethods.getList();
        return paymentMethods;
        
    }
    //get the number of current payment methods
    public int getNumberofPayments() throws UnknownHostException{
        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                paymentMethods = getPayments();
         int i = 0;
         if(paymentMethods!=null){
         for (Paymentmethod paymentMethod: paymentMethods){
             i++;
           
         }
        }
         
         return i;
    }
    @Test
    public void getUser() throws UnknownHostException {
         Users users =dbconnector.loadUsers(); 
         User user = users.login("kaido1@gmail.com", "qwe123456");
         assertEquals("Emails were not matched", "kaido1@gmail.com", user.getEmail());
         System.out.println("This test ran");
         
    }
    //Testing for create new topup payment
    @Test
    public void createTopUpPayment() throws UnknownHostException{
            
    }
    //Testing add payment methods 
    @Test
    public void addPayment() throws UnknownHostException{
       Users users =dbconnector.loadUsers(); 
       User user = users.login("kaido1@gmail.com", "qwe123456");
       Paymentmethod paymt = new Paymentmethod("Test","payment","1234123412341234",1,20,333);

        int i = getNumberofPayments();
        
        if( i < 3 ){
           String outcome = dbconnector.addPayment(paymt, user);
           assertEquals("Paymentmethods were not added","Your payment method has been successfully added !", outcome);
           System.out.println("Paymentmethods was added");
        } else if ( i >= 3 ){
           String outcome = dbconnector.addPayment(paymt, user);
           assertEquals("More then 3 payments were added to a user","You can only have a maximum of 3 payment methods. Please delete your existing payment method to continue!", outcome);
        }
       
    }
    @Test
    public void editPayment() throws UnknownHostException{
        Users users = dbconnector.loadUsers();
        User user = users.login("kaido1@gmail.com", "qwe123456");
        Paymentmethod paymt = new Paymentmethod("Test2","payment2","1234123412341234",2,21,333);
        ArrayList<Paymentmethod> paymentMethods = getPayments();
        int j = 0;
        int i = 0;
        if(paymentMethods !=null){
           for (Paymentmethod paymentmethod: paymentMethods){
               i++;
                //check for duplicate card number inside PaymentMethod array
               if(paymentmethod.getCardNumber().equals(paymt.getCardNumber()) && !paymt.getCardNumber().equals("1234123412341234")){
                    j++;
               }
            }
           //valid payment
        if(j == 0 && i > 0 ){
        String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
        int numberAfterUpdate = getNumberofPayments();
        assertEquals("Payment was not updated","Update was successful !", outcome);
        assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
        } else if ( i == 0 ) {
            String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
            int numberAfterUpdate = getNumberofPayments();
             assertEquals("Payment was not updated","You do not have any payment methods yet !", outcome);
             assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
        } else {
            String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
            int numberAfterUpdate = getNumberofPayments();
            assertEquals("Payment was not updated","Your updated details contains duplicated card number with other payment methods. Please put a valid method !", outcome);
            assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
        }
        }
        
    }
    //Remove paymentmethods 
    @After
    public void removePayment() throws UnknownHostException{
        Users users =dbconnector.loadUsers(); 
        User user = users.login("kaido1@gmail.com", "qwe123456");
        Paymentmethod paymt = new Paymentmethod("Test","payment","1234123412341234",1,20,333);
        ArrayList<Paymentmethod> paymentMethods = getPayments();
        //count the number of current paymentmethod
        int i = 0;
        // check whether the paymentmethod thats was about to be deleted exists
        int j = 0;
        if(paymentMethods!=null){
         for (Paymentmethod paymentMethod: paymentMethods){
             i++;
              if(paymentMethod.getCardNumber().equals(paymt.getCardNumber())){
                    j++;
                }
              
         }
         //If the selected card exist => delete it => number of payments  = i - 1
        if (j > 0 && i>0 ){
            String outcome = dbconnector.deletePaymentMethods(paymt.getCardNumber(), user);
            int numberAfterDelete = getNumberofPayments();
            assertEquals("Payment was not deleted","Your payment details were deleted successfully !", outcome);
            assertEquals("Number of payment after deleted is not matched",i-1, numberAfterDelete);
            System.out.println("Delete function was ran");
        } else if ( i ==0 || j == 0  ){
            String outcome = dbconnector.deletePaymentMethods(paymt.getCardNumber(), user);
            int numberAfterDelete = getNumberofPayments();
            assertEquals("Payment was not deleted","Your payment details were deleted successfully !", outcome);
            assertEquals("Number of payment after not deleting is not matched",i, numberAfterDelete);
        }
        }
        dbconnector.deleteUser(user);
    }
    

}
