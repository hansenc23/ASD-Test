/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import asd.model.*;
import asd.model.dao.*;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import java.net.UnknownHostException;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.bson.Document;
import org.junit.AfterClass;

/**
 *
 * @author hanse
 */
public class RegisterUnitTest {
    
    private static MongoDBConnector dbconnector;
    
    public RegisterUnitTest() {
    }
    
    @BeforeClass
    public static void setUpClass() throws UnknownHostException{
        dbconnector = new MongoDBConnector();
        System.out.println("Establish connection to Db");
        User user = new User("John","William","john.william@gmail.com","john123456","Ultimo","0434345643","false","12345");
        dbconnector.add(user); 
    }

    
    @Test
    public void listUser ()throws UnknownHostException{
        String testOutcome = dbconnector.testListUser();
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void getUserID ()throws UnknownHostException {
        User user = dbconnector.testGetUser("12345");
        String testOutcome = dbconnector.testGetUserID(user);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void updateDetails() throws UnknownHostException{
        User user = dbconnector.user("john.william@gmail.com", "john123456");
        String testOutcome = dbconnector.testUpdateUser(user);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void updatePassword() throws UnknownHostException{
        User user = dbconnector.user("john.william@gmail.com", "john123456");
        String testOutcome = dbconnector.testUpdatePassword(user);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void addSecurityQuestion() throws UnknownHostException{
        User user = dbconnector.user("john.william@gmail.com", "john123456");
        Question question = new Question("What is your name?", "John");
        String testOutcome = dbconnector.testAddSecurityQuestion(question, user);
        assertEquals("test succeed", testOutcome);
    }
    
    @AfterClass
    public static void tearDownClass() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc = userlist.find(and(eq("Username", "john.william@gmail.com"), eq("Password", "john123456"))).first();
            userlist.deleteOne(userdoc);
    }
    
   

    
    }
    
}
