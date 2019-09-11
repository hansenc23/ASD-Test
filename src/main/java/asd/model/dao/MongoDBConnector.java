
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

public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private List<Document> cards = new ArrayList();
    private List<Document> orderPayments = new ArrayList();
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
    
     //Add paymenthod to a particular User 
    public void addPayment(Paymentmethod paymt, User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
            userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("PaymentMethod",doc)));          
        }
    }
    //add a payment to payment record
    public void addTopUpPayment(TopUpPayment tpmt, User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
           try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            MongoCollection<Document> paymentlist = db.getCollection("ASD-app-payments");
            Document userdoc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
            String userId = (String) userdoc.get("_id").toString();
            Document paymentdoc = new Document().append("UserId", userId).append("OpalId", tpmt.getOpalId()).append("FirstName", tpmt.getFirstName()).append("LastName", tpmt.getLastName()).append("CardNumber", tpmt.getCardNumber())
                    .append("ExpiryMonth", tpmt.getExpiryMonth()).append("ExpiryYear", tpmt.getExpiryYear()).append("CVV", tpmt.getCvv()).append("PaymentDate", tpmt.getCurrentDate());
            paymentlist.insertOne(paymentdoc);
            //userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("PaymentMethod",doc)));                     
        }
         
    }
    
    //Get a customerID using user's email and password
    public String getCustomerID(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        String customerID;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            customerID = (String) doc.get("_id").toString();
        }
        return customerID;
    }
    
    //Add an opal card
    public void add(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
            String customerID = (String) doc.get("_id").toString();
            cards.add(new Document("OpalID", card.getOpalID()).append("CustomerID", customerID).append("Balance", card.getBalance()).append("Type", card.getType()).append("SecurityCode", card.getSecurityCode()));
            opallist.insertMany(cards);
        }
    }
    
    //Get all opal card(s) of a particular user
    public OpalCards getOpalCards(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        OpalCards opalCards = new OpalCards();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
            String customerID = (String) userdoc.get("_id").toString();
            for (Document doc : opallist.find((and(eq("CustomerID", customerID))))) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.addCard(card);
            }
        }
        return opalCards;   
    }
    
        public void add(OrderPayment orderPayment) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            orderPayments.add(new Document("PaymentID", orderPayment.getPaymentId()).append("OrderID", orderPayment.getOrderId()).append("FirstName", orderPayment.getFirstName()).append("LastName", orderPayment.getLastName()).append("CardNumber", orderPayment.getCardNumber()).append("ExpiryMonth", orderPayment.getExpiryMonth()).append("ExpiryYear", orderPayment.getExpiryYear()).append("CVV", orderPayment.getCvv()));
            MongoCollection<Document> userlist = db.getCollection("ASD-app-orderPayments"); //Create a collection ASD-app-users on mLab
            userlist.insertMany(orderPayments);
        }
    }
    
    public void add(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            orders.add(new Document("OrderID", order.getOrderId()).append("CustomerID", order.getCustomerId()).append("OpalID", order.getOpalId()).append("OpalType", order.getOpalType()).append("OrderDate", order.getOrderDate()).append("Value", order.getValue()).append("Status", order.getStatus()));
            MongoCollection<Document> userlist = db.getCollection("ASD-app-orders"); //Create a collection ASD-app-users on mLab
            userlist.insertMany(orders);
        }
    }
}
