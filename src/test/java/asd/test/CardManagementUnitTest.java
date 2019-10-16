///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
//
//import asd.model.OpalCard;
//import asd.model.User;
//import asd.model.dao.MongoDBConnector;
//import com.mongodb.MongoClient;
//import com.mongodb.MongoClientURI;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import static com.mongodb.client.model.Filters.and;
//import static com.mongodb.client.model.Filters.eq;
//import java.net.UnknownHostException;
//import org.bson.Document;
//import org.junit.AfterClass;
//import org.junit.BeforeClass;
//import org.junit.Test;
//import static org.junit.Assert.*;
//
///**
// *
// * @author Michelle
// */
//public class CardManagementUnitTest {
//    
//    private static MongoDBConnector connector;
//    public CardManagementUnitTest() {
//        
//    }
//    
//    @BeforeClass
//    public static void setUpClass() throws UnknownHostException {
//        connector = new MongoDBConnector();
//        System.out.println("Establish connection to DB");
//        User user = new User("Yuna", "Natalie", "yuna@gmail.com", "1234567", "Araya Tahap 2", "123421521", "false", "98989");
//        connector.add(user);
//    }
//    
//    @AfterClass
//    public static void tearDownClass() {
//        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
//        try (MongoClient client = new MongoClient(uri)) {
//            MongoDatabase db = client.getDatabase(uri.getDatabase());
//            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
//            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
//            OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211");
//            User user = connector.user("yuna@gmail.com", "1234567");
//            Document opaldoc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("SecurityCode", card.getSecurityCode()))).first();
//            Document userdoc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
//            opallist.deleteOne(opaldoc);
//            userlist.deleteOne(userdoc);
//        }
//    }
//
//    /**
//     * Test of registerCard method, of class MongoDBConnector.
//     */
//    @Test
//    public void testRegisterCard() throws UnknownHostException {
//        OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211");
//        String result = connector.testRegisterCard(card);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of linkCard method, of class MongoDBConnector.
//     */
//    @Test
//    public void testLinkCard() throws UnknownHostException {
//        User user = connector.user("yuna@gmail.com", "1234567");
//        OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211", connector.getCustomerID(user.getEmail(), user.getPassword()));
//        String result = connector.testLinkCard(card, user);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of unlinkCard method, of class MongoDBConnector.
//     */
//    @Test
//    public void testUnlinkCard() throws UnknownHostException {
//        User user = connector.user("yuna@gmail.com", "1234567");
//        OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211", connector.getCustomerID(user.getEmail(), user.getPassword()));    
//        String result = connector.testUnlinkCard(card, user);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of showAllCards method, of class MongoDBConnector.
//     */
//    @Test
//    public void testShowAllCards() throws UnknownHostException {
//        String result = connector.testShowAllCards();
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of getOpalCards method, of class MongoDBConnector.
//     */
//    @Test
//    public void testGetOpalCards() {
//        User user = connector.user("yuna@gmail.com", "1234567");
//        String result = connector.testGetOpalCards(user);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of getCardDetails method, of class MongoDBConnector.
//     */
//    @Test
//    public void testGetCardDetails() {
//        OpalCard card = new OpalCard("1211 1211 1211 1211");
//        String result = connector.testGetCardDetails(card.getOpalID());
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of getCustomerName method, of class MongoDBConnector.
//     */
//    @Test
//    public void testGetCustomerName() {
//        User user = connector.user("yuna@gmail.com", "1234567");
//        String result = connector.testGetCustomerName(connector.getCustomerID(user.getEmail(), user.getPassword()));
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of isExist method, of class MongoDBConnector.
//     */
//    @Test
//    public void testIsExist_OpalCard() {
//        OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211");
//        String result = connector.testIsExist(card);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of isLinked method, of class MongoDBConnector.
//     */
//    @Test
//    public void testIsLinked() {
//        User user = connector.user("yuna@gmail.com", "1234567");
//        OpalCard card = new OpalCard("1211 1211 1211 1211", 5.0, "Adult", "1211");
//        String result = connector.testIsLinked(card, user);
//        assertEquals("Test success", result);
//    }
//
//    /**
//     * Test of isAvailable method, of class MongoDBConnector.
//     */
//    @Test
//    public void testIsAvailable() {
//        OpalCard card = new OpalCard("1211 1211 1211 1211","1211");
//        String result = connector.testIsAvailable(card);
//        assertEquals("Test success", result);
//    }    
//}
