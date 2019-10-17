/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import asd.model.TransferBalance;
import asd.model.dao.MongoDBConnector;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Michelle
 */
public class TransferBalanceUnitTest {
    
    private static MongoDBConnector connector;
    public TransferBalanceUnitTest() {
        
    }
    
    @BeforeClass
    public static void setUpClass() throws UnknownHostException {
        connector = new MongoDBConnector();
        System.out.println("Establish connection to DB");
    }

    /**
     * Test of validForTransfer method, of class MongoDBConnector.
     */
    @Test
    public void testValidForTransfer() throws UnknownHostException {
        String customerID = connector.getCustomerID("my@gmail.com", "123456");
        String result = connector.testValidForTransfer(customerID);
        assertEquals("Test success", result);
    }

    /**
     * Test of transferBalance method, of class MongoDBConnector.
     */
    @Test
    public void testTransferBalance() throws UnknownHostException {
        java.util.Date date = new java.util.Date();
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String transferDate = dateFormat.format(date);
        String customerID = connector.getCustomerID("my@gmail.com", "123456");
        TransferBalance testRecord = new TransferBalance("1111 2222 1111 2222", "7777 8888 7777 8888", 5.00, customerID, transferDate);
        String result = connector.testTransferBalance(testRecord);
        assertEquals("Test success", result);
    }

    /**
     * Test of transferHistory method, of class MongoDBConnector.
     */
    @Test
    public void testTransferHistory() throws UnknownHostException {
        String customerID = connector.getCustomerID("my@gmail.com", "123456");
        java.util.Date date = new java.util.Date();
        DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/DD");
        String transferDate = dateFormat.format(date);
        String resultSearchDate = connector.testTransferHistory(transferDate, "TransferDate", customerID);
        String resultShowAll = connector.testTransferHistory(customerID, "CustomerID", customerID);
        assertEquals("Test success", resultShowAll);
        assertEquals("Test success", resultSearchDate);
    }    
}
