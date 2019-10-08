///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
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
//
//
///**
// *
// * @author kevin
// */
//public class enqiryUnitTest {
//     private static MongoDBConnector dbconnector;
//     public enqiryUnitTest(){
//     }
//   
//     @BeforeClass
//    public static void setUpClass() throws UnknownHostException {
//        dbconnector = new MongoDBConnector();
//        System.out.println("Establish connection to Db");
//     //   User user = new User("Test","test","test@gmail.com","123","123","098765332","false","");
//     //   dbconnector.add(user);
//    }
//    @Test
//    public void testAdd ()throws UnknownHostException{
//        String question = "question";
//        String answer = "answer";
//        Enqiry enqiry = new Enqiry("user@gmail.com",question, answer,"1231231","This is The title");
//        String testOutcome = dbconnector.testAdd(enqiry);
//        assertEquals("test succeed", testOutcome);
//        
//    }
//    @Test
//   public void testloadEnqiries() throws UnknownHostException{
//        //String question = "question";
//        //String answer = "answer";
//        //Enqiry enqiry = new Enqiry("user@gmail.com",question, answer,"1231231","This is The title");
//        String testOutcome = dbconnector.testloadEnqiries();
//        assertEquals("test succeed", testOutcome);
//   }
//     @Test
//    public void testUpdateEnqiry ()throws UnknownHostException{
//        String question = "new question";
//        String answer = "new answer";
//        Enqiry enqiry = new Enqiry("user@gmail.com",question, answer,"1231231","This is The title");
//        String testOutcome = dbconnector.testUpdateEnqiry(enqiry);
//        assertEquals("test succeed", testOutcome);
//        
//    }
//   
//   
//   @AfterClass
//    public static void tearDownClass() {
//     dbconnector.removeEnqiries("1231231");
//    }
//}
