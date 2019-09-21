<<<<<<< HEAD
//
=======
>>>>>>> 7d8c2acc8a82907ecac7924ec9620c8c3f6d1626
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
//
//import asd.model.*;
//import asd.model.dao.*;
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
///**
// *
// * @author anita
// */
//public class OrderUnitTest {
//    
//    private static MongoDBConnector dbconnector;
//    public OrderUnitTest() { 
//     
//     }
//    @BeforeClass
//    public static void createDbclass() throws UnknownHostException {
//        dbconnector = new MongoDBConnector();
//        System.out.println("Establish connection to Db");
//        User user = new User("Rush","Z","Zrush@gmail.com","rdrr","twitch","098765332","false","");
//        dbconnector.add(user); 
//    }
//            
//    @Test
//    public void addOrder ()throws UnknownHostException{
//        String opalID = "6666 7777 6666 7777";
//        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
//        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01", 15.0,"testing");
//        String testOutcome = dbconnector.testAdd(order);
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void addOrderPaymentmethod ()throws UnknownHostException{
//        Paymentmethod payment = new Paymentmethod("Rush","Z","4678954625635279", 9, 24, 345);
//        Order order = dbconnector.testGetOrder("6666 7777 6666 7777");
//        String testOutcome = dbconnector.testAdd(payment, order);
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void listOrder ()throws UnknownHostException{
//        String testOutcome = dbconnector.testListOrder();
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void getOrders ()throws UnknownHostException {
//        User user = dbconnector.user("Zrush@gmail.com", "rdrr");
//        String testOutcome = dbconnector.testGetOrders(user);
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void getOrderID ()throws UnknownHostException {
//        Order order = dbconnector.testGetOrder("6666 7777 6666 7777");
//        String testOutcome = dbconnector.testGetOrderID(order);
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void getOrderPayment ()throws UnknownHostException{
//        Order order = dbconnector.testGetOrder("6666 7777 6666 7777");
//        String testOutcome = dbconnector.testGetOrderPayment(order);
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @AfterClass
//    public static void deleteTestingRecord(){    
//    MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
//        try (MongoClient client = new MongoClient(uri)) {
//            MongoDatabase db = client.getDatabase(uri.getDatabase());
//            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
//            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
//            Document userdoc = userlist.find(and(eq("Username", "Zrush@gmail.com"), eq("Password", "rdrr"))).first();
//            userlist.deleteOne(userdoc);
//            Document orderdoc = orderlist.find(eq("OpalID", "6666 7777 6666 7777")).first();
//            orderlist.deleteOne(orderdoc);
//        }
//    }
//
//}
