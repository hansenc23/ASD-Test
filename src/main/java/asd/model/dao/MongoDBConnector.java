
package asd.model.dao;

import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.model.*;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import com.mongodb.client.model.Updates;

public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private List<Document> cards = new ArrayList();
    private List<Document> paymentMethods = new ArrayList();
    private List<Document> orders = new ArrayList();
    private String owner;
    private String password;

    public MongoDatabase getMongoDB(){
       MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       MongoDatabase db;
       try (MongoClient client = new MongoClient(uri)) {
            db = client.getDatabase(uri.getDatabase());
       }
       return db;
       
    }
    
    public MongoDBConnector(String owner, String password) throws UnknownHostException {
        this.owner = owner;
        this.password = password;
    }

    public void showall(Users users) {
        for (User u : users.getList()) {
            System.out.println(u.getFirstName());
        }
    }

    public void add(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users.add(new Document("Username", user.getEmail()).append("Password", user.getPassword()).append("FirstName", user.getFirstName()).append("LastName", user.getLastName()).append("Address", user.getAddress()).append("PhoneNumber", user.getPhoneNumber()).append("isStaff", user.getIsStaff()));
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users"); //Create a collection ASD-app-users on mLab
            userlist.insertMany(users);
        }
    }

    public void showUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            try (MongoCursor<Document> cursor = userlist.find().iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }
        }
    }

    public Users loadUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users = new Users();
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find()) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"));
                users.addUser(user);
            }
        }
        return users;
    }

//     public ArrayList<User> loadAllUsers() {
//        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqnl:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
//        ArrayList<User> users;
//        try (MongoClient client = new MongoClient(uri)) {
//            MongoDatabase db = client.getDatabase(uri.getDatabase());
//            users = new ArrayList<User>();
//            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
//            for (Document doc : userlist.find()) {
//                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Dob"),(String) doc.get("PhoneNumber"));
//                users.add(user);
//            }
//        }
//        return users;
//    }
//    
    
    
    public User user(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"));
        }
        return user;
    }
  
    
    
    

//Payment and topup management
    
    //Add paymenthod to a particular User 
     public void addPayment(Paymentmethod paymt, User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc =  userlist.find(eq("Username", user.getEmail())).first();
            Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
            //Check for existing paymentmethod array
            if(userdoc.get("PaymentMethod") != null){
            paymentMethods = (List<Document>) userdoc.get("PaymentMethod");
            int i = 1;
            int j = 0; 
            //count the number of payments
            for (Document paymentmethod : paymentMethods){
                i++;
                //check for duplicate card number inside PaymentMethod array
                if(paymentmethod.getString("CardNumber").equals(paymt.getCardNumber())){
                    j++;
                }
            }
            
            if(i <= 3 || j >0){
                 userlist.updateOne(eq("Username", user.getEmail()),Updates.addToSet("PaymentMethod", doc) );
            }
            } else {
                userlist.updateOne(eq("Username", user.getEmail()),Updates.addToSet("PaymentMethod", doc) );
            }
           
            //new Document("$set", new Document("PaymentMethod",doc))
        }
    }
    //Get payment methods
      public Paymentmethods getPaymentMethods(User user){
       MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       Paymentmethods pmtMethods = new Paymentmethods();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            //get userdoc 
            Document userdoc =  userlist.find(eq("Username", user.getEmail())).first();  
            //check if the payment methods attribute already exists in the user doc
            if(userdoc.get("PaymentMethod") != null){
                paymentMethods = (List<Document>) userdoc.get("PaymentMethod");
                for (Document pmtdoc : paymentMethods) {
                Paymentmethod pmtMethod = new Paymentmethod((String) pmtdoc.get("FirstName"), (String) pmtdoc.get("LastName") ,(String) pmtdoc.get("CardNumber"), (int) pmtdoc.get("ExpiryMonth"), (int) pmtdoc.get("ExpiryYear"), (int) pmtdoc.get("CVV") );
                pmtMethods.addPaymentMethods(pmtMethod);
            }
            
            
        }
        }
        return pmtMethods;   
       
   }
    
    
    //add a payment to payment record
    public void addTopUpPayment(TopUpPayment tpmt, User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
           try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            MongoCollection<Document> topuplist = db.getCollection("ASD-app-topup");
            Document userdoc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
            String userId = (String) userdoc.get("_id").toString();
            Document paymentdoc = new Document().append("UserId", userId).append("OpalId", tpmt.getOpalId()).append("Value", tpmt.getValue()).append("Date", tpmt.getDate());
            topuplist.insertOne(paymentdoc);
            //userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("PaymentMethod",doc)));                     
        }
         
    }
    
    
    
    //Get a customerID using user's email and password
    public String getCustomerID(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String customerID;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            customerID = (String) doc.get("_id").toString();
        }
        return customerID;
    }
    
//
    

    
    
//CARD MANAGEMENT
    
    // Staff register opal cards to the db
    public void registerCard(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = new Document().append("OpalID", card.getOpalID()).append("Balance", card.getBalance()).append("Type", card.getType()).append("SecurityCode", card.getSecurityCode());
            opallist.insertOne(doc);
        }
    }
    
    // Update registered opal card's customer ID from null to user's ID
    public void linkCard(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            opallist.updateOne(eq("OpalID", card.getOpalID()), new Document("$set", new Document("CustomerID", customerID))); 
        }
    }
    
    // Update the linked opal card's customer ID from user's ID to null
    public void unlinkCard(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            opallist.updateOne(eq("OpalID", card.getOpalID()), new Document("$unset", new Document("CustomerID", null))); 
        }
    }
    
    // For staff to show all opal cards
    public OpalCards showAllCards() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        OpalCards opalCards;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            opalCards = new OpalCards();
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            for (Document doc : opallist.find()) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.addCard(card);
            }
        }
        return opalCards;
    }
    
    //Get all opal card(s) of a particular user
    public OpalCards getOpalCards(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        OpalCards opalCards = new OpalCards();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            for (Document doc : opallist.find(eq("CustomerID", customerID))) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.addCard(card);
            }
        }
        return opalCards;   
    }
   
    //If Opal Card is already exist in DB    
    public boolean isExist(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean exist = false;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(eq("OpalID", card.getOpalID())).first();
            if (doc != null) {
                exist = true;
            }
        }
        return exist;
    }
    
    // Whether the card that the user want to link already been linked to their account
    public boolean isLinked(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean linked = false;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            Document doc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("CustomerID", customerID))).first();
            if (doc != null) {
                linked = true;
            }
        }
        return linked;
    }
    
    // Check if the card is registered in db and match with its security code (true if it's registered and correct)
    public boolean isAvailable(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean correct = false;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("SecurityCode", card.getSecurityCode()))).first();
            if (doc != null) {
                correct = true;
            }
        }
        return correct;
    }
    
// 

    
//Order Management
    
    //add order
    public void add(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            orders.add(new Document("CustomerID", order.getCustomerId()).append("OpalID", order.getOpalId()).append("PaymentCard", order.getPaymentCard()).append("OpalType", order.getOpalType()).append("OrderDate", order.getOrderDate()).append("Value", order.getValue()).append("Status", order.getStatus()));
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            orderlist.insertMany(orders);
        }
    }
    
    public void add(Paymentmethod payment, Order order){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document doc = new Document().append("FirstName", payment.getFirstName()).append("LastName", payment.getLastName()).append("CardNumber", payment.getCardNumber()).append("ExpiryMonth", payment.getExpiryMonth()).append("ExpiryYear", payment.getExpiryYear()).append("CVV", payment.getCvv());     
            orderlist.updateOne(eq("OpalID", order.getOpalId()), new Document("$set", new Document("PaymentMethod",doc))); 
        }
    }

//
}
