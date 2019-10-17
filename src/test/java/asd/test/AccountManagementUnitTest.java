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
public class AccountManagementUnitTest {
    
    private static MongoDBConnector dbconnector;
    
    public AccountManagementUnitTest() {
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
    public void updateDetails() throws UnknownHostException{
        User user = dbconnector.user("john.william@gmail.com", "john123456");
        String testOutcome = dbconnector.testUpdateUser(user);
        assertEquals("test succeed", testOutcome);
    }   
    
    @Test
    public void findUsers() throws UnknownHostException{
        User user = dbconnector.user("john.william@gmail.com", "john123456");
        String testOutcome = dbconnector.testFindUsersByFirstName(user.getFirstName());
        assertEquals("test succeed", testOutcome);
    }
    
    @AfterClass
    public static void tearDownClass() {
        dbconnector.testRemoveUser("12345");
        
    

    }
}