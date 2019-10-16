///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
 //* and open the template in the editor.
// */
package asd.test;
import asd.model.User;
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
 * @author kevin
 */
public class accessManagerUnitTest {
    private static MongoDBConnector dbconnector;
    public accessManagerUnitTest() {
    }
    
    @BeforeClass
    public static void setUpClass() throws UnknownHostException {
       
        dbconnector = new MongoDBConnector();
        System.out.println("Establish connection to Db");
        User user = new User("Test","test","test@gmail.com","123","123","098765332","false","");
        dbconnector.add(user); 
    }
    @Test
    public void add()throws UnknownHostException{
        Time time = new Time("test@gmail.com","123456","2019-09-01 at 16:31:49 AEST","2019-09-01 at 16:31:49 AEST");
//        String opalID = "6666 7777 6666 7777";
//        String cusID = dbconnector.getCustomerID("Zrush@gmail.com", "rdrr");
//        Order order = new Order(cusID, opalID, "", "Adult", "2019-11-01", 15.0,"testing");
       String testOutcome = dbconnector.testAdd(time);
       assertEquals("test succeed", testOutcome);
    }
    @Test
    public void search()throws UnknownHostException{
        String customerID ="test@gmail.com";
        String loginT ="2019-09-01 at 16:31:49 AEST";
        String testOutcome = dbconnector.testUserSearchTimes(customerID,loginT);
        assertEquals("test succeed", testOutcome);
    }
    @AfterClass
    public static void tearDownClass() {
          
    MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       try (MongoClient client = new MongoClient(uri)) {
           MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc = userlist.find(and(eq("Username", "test@gmail.com"), eq("Password", "123"))).first();
            userlist.deleteOne(userdoc);
           Document timedoc = timelist.find(eq("loginID", "123456")).first();
           timelist.deleteOne(timedoc);
    }
  }
   

 
}
