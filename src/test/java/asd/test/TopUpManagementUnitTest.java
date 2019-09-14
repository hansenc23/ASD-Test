///*
//// * To change this license header, choose License Headers in Project Properties.
//// * To change this template file, choose Tools | Templates
//// * and open the template in the editor.
//// */
//package asd.test;
//
//import asd.model.*;
//import asd.model.dao.*;
//import java.text.SimpleDateFormat;
//import com.mongodb.MongoClient;
//import com.mongodb.MongoClientURI;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import static com.mongodb.client.model.Filters.and;
//import static com.mongodb.client.model.Filters.eq;
//import java.net.UnknownHostException;
//import org.junit.Test;
//import static org.junit.Assert.*;
//import org.junit.BeforeClass;
//import org.bson.Document;
//import org.junit.AfterClass;
//import asd.model.Paymentmethod;
//import asd.model.Paymentmethods;
//import asd.model.User;
//import asd.model.dao.MongoDBConnector;
//import java.net.UnknownHostException;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.Date;
//import org.junit.Test;
//import static org.junit.Assert.*;
//import org.junit.BeforeClass;
//
///**
// *
// * @author Hieu
// */
//public class TopUpManagementUnitTest {
//    private static MongoDBConnector dbconnector;
//    public TopUpManagementUnitTest() { 
//     
//     }
//    @BeforeClass
//    public static void createDbclass() throws UnknownHostException {
//        dbconnector = new MongoDBConnector();
//        System.out.println("Establish connection to Db");
//        User user = new User("hieu","nguyen","kaido1@gmail.com","qwe123456","qwe12","0913470400","false","");
//        dbconnector.add(user);
//    }
//    //get the paymentmethods  array list
//    public  ArrayList<Paymentmethod> getPayments() throws UnknownHostException{
//        User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//        Paymentmethods pmtmethods = new Paymentmethods();
//        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
//        pmtmethods  =  dbconnector.getPaymentMethods(user);
//        paymentMethods = pmtmethods.getList();
//        return paymentMethods;
//        
//    }
//    //get the number of current payment methods
//    public int getNumberofPayments() throws UnknownHostException{
//        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
//                paymentMethods = getPayments();
//         int i = 0;
//         if(paymentMethods!=null){
//         for (Paymentmethod paymentMethod: paymentMethods){
//             i++;
//           
//         }
//        }
//         
//         return i;
//    }
//    @Test
//    public void getUser() throws UnknownHostException {
//         User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//         assertEquals("Emails were not matched", "kaido1@gmail.com", user.getEmail());
//         System.out.println("This test ran");
//         
//    }
//    //Testing for create new topup payment
//    @Test
//    public void createTopUpPayment() throws UnknownHostException{
//            User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//            String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
//            String cusId = dbconnector.getCustomerID(user.getEmail(), user.getPassword());
//            String opalId = "8221 8221 8221 8221";
//            TopUpPayment tpmt = new TopUpPayment(cusId,opalId,20.0, currentDate);
//            String test = dbconnector.testAddTopUpPayment(tpmt, user);
//            assertEquals("Test success", test);
//    }
//    //Testing add payment methods 
//    @Test
//    public void addPayment() throws UnknownHostException{
//       User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//       Paymentmethod paymt = new Paymentmethod("Test","payment","1234123412341234",1,20,333);
//
//        int i = getNumberofPayments();
//        
//        if( i < 3 ){
//           String outcome = dbconnector.addPayment(paymt, user);
//           assertEquals("Paymentmethods were not added","Your payment method has been successfully added !", outcome);
//           System.out.println("Paymentmethods was added");
//        } else if ( i >= 3 ){
//           String outcome = dbconnector.addPayment(paymt, user);
//           assertEquals("More then 3 payments were added to a user","You can only have a maximum of 3 payment methods. Please delete your existing payment method to continue!", outcome);
//        }
//       
//    }
//    
//    @Test
//    public void editPayment() throws UnknownHostException{
//        User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//        Paymentmethod paymt = new Paymentmethod("Test2","payment2","1234123412341234",2,21,333);
//        ArrayList<Paymentmethod> paymentMethods = getPayments();
//        int j = 0;
//        int i = 0;
//        if(paymentMethods !=null){
//           for (Paymentmethod paymentmethod: paymentMethods){
//               i++;
//                //check for duplicate card number inside PaymentMethod array
//               if(paymentmethod.getCardNumber().equals(paymt.getCardNumber()) && !paymt.getCardNumber().equals("1234123412341234")){
//                    j++;
//               }
//            }
//           //valid payment
//        if(j == 0 && i > 0 ){
//        String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
//        int numberAfterUpdate = getNumberofPayments();
//        assertEquals("Payment was not updated","Update was successful !", outcome);
//        assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
//        } else if ( i == 0 ) {
//            String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
//            int numberAfterUpdate = getNumberofPayments();
//             assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
//        } else {
//            String outcome = dbconnector.editPaymentMethod("1234123412341234",paymt,user);
//            int numberAfterUpdate = getNumberofPayments();
//            assertEquals("Number of Payments after update is not matched",i,numberAfterUpdate);
//        }
//        }
//        
//    }
//    //Remove paymentmethods 
//    @Test
//    public void removePayment() throws UnknownHostException{
//        User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//        Paymentmethod paymt = new Paymentmethod("Test","payment","1234123412341234",1,20,333);
//        ArrayList<Paymentmethod> paymentMethods = getPayments();
//        //count the number of current paymentmethod
//        int i = 0;
//        // check whether the paymentmethod thats was about to be deleted exists
//        int j = 0;
//        if(paymentMethods!=null){
//         for (Paymentmethod paymentMethod: paymentMethods){
//             i++;
//              if(paymentMethod.getCardNumber().equals(paymt.getCardNumber())){
//                    j++;
//                }
//              
//         }
//         //If the selected card exist => delete it => number of payments  = i - 1
//        if (j > 0 && i>0 ){
//            String outcome = dbconnector.deletePaymentMethods(paymt.getCardNumber(), user);
//            int numberAfterDelete = getNumberofPayments();
//            assertEquals("Payment was not deleted","Your payment details were deleted successfully !", outcome);
//            assertEquals("Number of payment after deleted is not matched",i-1, numberAfterDelete);
//            System.out.println("Delete function was ran");
//            // if there is no paymentmethods or paymentmethod argument is not valid
//        } else if ( i ==0 || j == 0  ){
//            String outcome = dbconnector.deletePaymentMethods(paymt.getCardNumber(), user);
//            int numberAfterDelete = getNumberofPayments();
//            assertEquals("Number of payment after not deleting is not matched",i, numberAfterDelete);
//        }
//        }
//    }
//     @AfterClass
//    public static void deleteTestingRecord(){    
//    MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
//    User user = dbconnector.user("kaido1@gmail.com", "qwe123456");
//    String cusId = dbconnector.getCustomerID(user.getEmail(), user.getPassword());
//        try (MongoClient client = new MongoClient(uri)) {
//            MongoDatabase db = client.getDatabase(uri.getDatabase());
//            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
//            MongoCollection<Document> topuplist = db.getCollection("ASD-app-topup");
//            Document userdoc = userlist.find(and(eq("Username", "kaido1@gmail.com"), eq("Password", "qwe123456"))).first();
//            Document topupdoc = topuplist.find(eq("UserId",cusId)).first();
//            topuplist.deleteOne(topupdoc);
//            userlist.deleteOne(userdoc);
//        }
//    }    
//
//}
