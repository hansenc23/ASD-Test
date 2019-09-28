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
//public class FAQsUnitTest {
//    
//    private static MongoDBConnector dbconnector;
//    public FAQsUnitTest() { 
//     
//     }
//    @BeforeClass
//    public static void createDbclass() throws UnknownHostException {
//        dbconnector = new MongoDBConnector();
//        System.out.println("Establish connection to Db");
//    }
//            
//    @Test
//    public void addFAQ ()throws UnknownHostException{
//        String question = "question";
//        String answer = "answer";
//        FAQ faq = new FAQ(question, answer);
//        String testOutcome = dbconnector.addFAQ(faq);
//        assertEquals("test succeed", testOutcome);
//        dbconnector.deleteFAQs(faq);
//    }
//    
//    @Test
//    public void listFAQ ()throws UnknownHostException{
//        String testOutcome = dbconnector.testListFAQs();
//        assertEquals("test succeed", testOutcome);
//    }
//    
//    @Test
//    public void getFAQid ()throws UnknownHostException{
//        String question = "question";
//        String answer = "answer";
//        FAQ faq = new FAQ(question, answer);
//        dbconnector.addFAQ(faq);
//        String testOutcome = dbconnector.testGetFAQid(faq);
//        assertEquals("test succeed", testOutcome);
//        dbconnector.deleteFAQs(faq);
//    }
//    
//    @Test
//    public void updateFAQ ()throws UnknownHostException {
//        String question = "question";
//        String answer = "answer";
//        FAQ faq = new FAQ(question, answer);
//        dbconnector.addFAQ(faq);
//        String id = dbconnector.getFAQid(faq);
//        String updateQuestion = "updateQuestion";
//        String updateAnswer = "updateAnswer";
//        FAQ updateFAQ = new FAQ(updateQuestion, updateAnswer);
//        String testOutcome = dbconnector.updateFAQs(id, updateFAQ);
//        assertEquals("Update was successful !", testOutcome);
//        dbconnector.deleteFAQs(updateFAQ);
//    }
//    
//    @Test
//    public void deleteFAQ ()throws UnknownHostException {
//        String question = "question";
//        String answer = "answer";
//        FAQ faq = new FAQ(question, answer);
//        dbconnector.addFAQ(faq);
//        String testOutcome = dbconnector.deleteFAQs(faq);
//        assertEquals("Delete was successful !", testOutcome);
//    }
//    
//}
