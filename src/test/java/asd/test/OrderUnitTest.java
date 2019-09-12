/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import asd.model.*;
import asd.model.dao.*;
import java.net.UnknownHostException;
import java.util.ArrayList;
import junit.framework.Assert;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.BeforeClass;
import java.util.Random;
/**
 *
 * @author anita
 */
public class OrderUnitTest {
    
    private static MongoDBConnector dbconnector;
    public OrderUnitTest() { 
     
     }
    @BeforeClass
    public static void createDbclass() throws UnknownHostException {
        dbconnector = new MongoDBConnector("nxhieuqn1","qwe123456");
        System.out.println("Establish connection to Db");
        User user = new User("Rush","Z","Zrush@gmail.com","rdrr","twitch","098765332","false");
        dbconnector.add(user);
    }
            
    @Test
    public void addOrder ()throws UnknownHostException{
        String opalID = "" + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999);
        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01",15.0,"testing");
        String testOutcome = dbconnector.testAdd(order);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void addOrderPaymentmethod ()throws UnknownHostException{
        Paymentmethod payment = new Paymentmethod("Rush","Z","4678954625635279", 9, 24, 345);
        String opalID = "" + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999);
        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01",15.0,"testing");
        String testOutcome = dbconnector.testAdd(payment, order);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void listOrder ()throws UnknownHostException{
        String testOutcome = dbconnector.testListOrder();
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void getOrders ()throws UnknownHostException {
        User user = dbconnector.user("Zrush@gmail.com", "rdrr");
        String testOutcome = dbconnector.testGetOrders(user);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void getOrderID ()throws UnknownHostException {
        String opalID = "" + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999);
        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01", 15.0,"testing");
        dbconnector.add(order);
        String testOutcome = dbconnector.testGetOrderID(order);
        assertEquals("test succeed", testOutcome);
    }
    
    @Test
    public void getOrderPayment ()throws UnknownHostException{
        String opalID = "" + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999) + " " + (new Random()).nextInt(9999);
        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01",15.0,"testing");
        dbconnector.add(order);
        Paymentmethod payment = new Paymentmethod("Rush","Z","4678954625635279", 9, 24, 345);
        dbconnector.add(payment, order);
        String testOutcome = dbconnector.testGetOrderPayment(order);
        assertEquals("test succeed", testOutcome);
    }

}
