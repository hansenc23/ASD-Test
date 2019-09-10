package asd.model.dao;

import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.model.*;
import org.bson.conversions.Bson;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Updates.combine;
import com.mongodb.client.model.Updates;
    
import com.mongodb.BasicDBObject;
import java.util.regex.Pattern;
import org.bson.types.ObjectId;




public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private List<Document> cards = new ArrayList();
    private List<Document> orders = new ArrayList();
    private List<Document> times = new ArrayList();
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
        // MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
    }

    public void showall(Users users) {
        for (User u : users.getList()) {
            System.out.println(u.getFirstName());
        }
    }
    
    
    
    public String updateUser(User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome = "There was an error updating your payment method. Please try again later !";
         try(MongoClient client = new MongoClient(uri)){
             MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc =  userlist.find(eq("UserID", user.getUserID())).first();
            //Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
                    ObjectId _id = new ObjectId(userdoc.get("_id").toString());
                    
            
                    Bson filter = Filters.and(Filters.eq("_id", _id));
                    Bson updateFirstName = Updates.set("FirstName", user.getFirstName());
                    Bson updateLastName = Updates.set("LastName", user.getLastName());
                    Bson updateEmail = Updates.set("Username", user.getEmail());
                    Bson updateAddress= Updates.set("Address", user.getAddress());
                    Bson updatePhone = Updates.set("PhoneNumber", user.getPhoneNumber());
//                    userlist.updateOne(filter, combine(updateFirstName,updateLastName,updateCardNumber,updateExpiryMonth,updateExpiryYear,updateCVV));   
                    userlist.updateOne(filter, combine(updateFirstName,updateLastName, updateAddress, updatePhone));
                    userlist.updateOne(filter, updateEmail);
                    outcome = "Update was successful !";
             
            
        }
        return outcome;
    }
    
    public String updatePassword(User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome = "";
         try(MongoClient client = new MongoClient(uri)){
             MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc =  userlist.find(eq("UserID", user.getUserID())).first();
            //Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
                    ObjectId _id = new ObjectId(userdoc.get("_id").toString());
                
                    Bson filter = Filters.and(Filters.eq("_id", _id));
                    Bson updatePassword = Updates.set("Password", user.getPassword());
                  
//                    userlist.updateOne(filter, combine(updateFirstName,updateLastName,updateCardNumber,updateExpiryMonth,updateExpiryYear,updateCVV));   
                    
                    userlist.updateOne(filter, updatePassword);
                    outcome = "Password changed!";
             
            
        }
        return outcome;
    }
    
    
    public String updatePassword(String email, String password){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome = "";
         try(MongoClient client = new MongoClient(uri)){
             MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc =  userlist.find(eq("Username", email)).first();
            //Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
                    //ObjectId _id = new ObjectId(userdoc.get("_id").toString());
                
                    Bson filter = Filters.and(Filters.eq("Username", email));
                    Bson updatePassword = Updates.set("Password", password);
                  
//                    userlist.updateOne(filter, combine(updateFirstName,updateLastName,updateCardNumber,updateExpiryMonth,updateExpiryYear,updateCVV));   
                    
                    userlist.updateOne(filter, updatePassword);
                    outcome = "Password changed!";
             
            
        }
        return outcome;
    }
    
    

    public void add(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users.add(new Document("Username", user.getEmail()).append("Password", user.getPassword()).append("FirstName", user.getFirstName()).append("LastName", user.getLastName()).append("Address", user.getAddress()).append("PhoneNumber", user.getPhoneNumber()).append("isStaff", user.getIsStaff()).append("Position", user.getPosition()).append("UserID", user.getUserID()));
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
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
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
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));

        }
        return user;
    }
    
    public User user(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));

        }
        return user;
    }
    
//    public Users user(String email) {
//        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
//        Users user = new Users();
//        try (MongoClient client = new MongoClient(uri)) {
//            MongoDatabase db = client.getDatabase(uri.getDatabase());
//            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
//            Document doc = userlist.find(eq("Username", email)).first();
//            user.getUser(email);
//
//        }
//        return user;
//    }
    
    public String getUser(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String custEmail;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            custEmail = (String) doc.get("Username").toString();
            
            if(custEmail == null){
                throw new Exception("email does not exist");
            }
        }catch(Exception ex){
            return ex.getMessage();
        }
        
        return custEmail;
    }
    
    public String getPassword(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String custPassword;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            custPassword = (String) doc.get("Password").toString();
            
            if(custPassword == null){
                throw new Exception("email does not exist");
            }
        }catch(Exception ex){
            return ex.getMessage();
        }
        
        return custPassword;
    }
    
     public void addSecurityQuestion(Question question, User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = new Document().append("Question", question.getQuestion()).append("Answer", question.getAnswer());
            userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("SecurityQuestion",doc)));          
        }
    }
     
     public String getSecurityQuestion(String email, String password){
            MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
            String question="";
            String exception="";
           try (MongoClient client = new MongoClient(uri)) {
               MongoDatabase db = client.getDatabase(uri.getDatabase());
               MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
               Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
               Document doc_security_question = doc.get("SecurityQuestion", Document.class);
               question = doc_security_question.getString("Question");
               
               if(doc_security_question.isEmpty()){
                   throw new Exception("no question");
               }
        
     }catch(Exception ex){
         return ex.getMessage();
     }
           return question;
     }
     
     public String getSecurityQuestion(String email){
            MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
            String question="";
            String exception="";
           try (MongoClient client = new MongoClient(uri)) {
               MongoDatabase db = client.getDatabase(uri.getDatabase());
               MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
               Document doc = userlist.find(eq("Username", email)).first();
               Document doc_security_question = doc.get("SecurityQuestion", Document.class);
               question = doc_security_question.getString("Question");
               
               if(doc_security_question.isEmpty()){
                   throw new Exception("no question");
               }
        
     }catch(Exception ex){
         return ex.getMessage();
     }
           return question;
     }
     
     public String getAnswer(String email){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String answer;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            Document doc_security_question = doc.get("SecurityQuestion", Document.class);
            answer = doc_security_question.getString("Answer");
            
            if(doc_security_question.isEmpty()){
                throw new Exception("no question");
            }
         
         

            }catch(Exception ex){
                return ex.getMessage();
            }
        
        return answer;
        }   
        
     
        public String getAnswer(String email, String password){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String answer;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            Document doc_security_question = doc.get("SecurityQuestion", Document.class);
            answer = doc_security_question.getString("Answer");
            
            if(doc_security_question.isEmpty()){
                throw new Exception("no question");
            }
         
         

            }catch(Exception ex){
                return ex.getMessage();
            }
        
        return answer;
        }   
        

    
    

//Payment and topup management
    
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
   
//  If Opal Card is already exist in DB    
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
            orders.add(new Document("OrderID", order.getOrderId()).append("CustomerID", order.getCustomerId()).append("OpalID", order.getOpalId()).append("OpalType", order.getOpalType()).append("OrderDate", order.getOrderDate()).append("Value", order.getValue()).append("Status", order.getStatus()));
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            orderlist.insertMany(orders);
        }
    }
//timeManager
    public void add(Time time) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            times.add(new Document("customerID", time.getCustomerID()).append("loginID", time. getloginID()).append("loginT", time.getLoginT()).append("logoutT", time.getLogoutT()));
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times"); //Create a collection ASD-app-times on mLab
            timelist.insertMany(times);
        }
    }

//      public ArrayList<Time> loadAllTime() {
//         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqnl:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
//         ArrayList<Time> tim;
//         try (MongoClient client = new MongoClient(uri)) {
//             MongoDatabase db = client.getDatabase(uri.getDatabase());
//             tim = new ArrayList<Time>();
//             MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
//                for (Document doc : timelist.find()) {
//                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("loginT"));
//                tim.add(time);
//        }
//      }
//       return tim;
//   }
      
       public Times loadTimes() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Times times;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            times = new Times();
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            for (Document doc : timelist.find()) {
                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("logoutT"));
                times.addTime(time);
            }
        }
        return times;
    }
       public Times findTimes(String loginT) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Times times;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            times = new Times();
            Pattern p = Pattern.compile(loginT +".*");
            query.append("loginT", p);
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            for (Document doc : timelist.find(query)) {
                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("logoutT"));
                times.addTime(time);
            }
        }
        return times;
    }
//
           public void removeTime(String loginID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times"); //Create a collection ASD-app-times on mLab
            timelist.deleteOne(eq("loginID", loginID));
        }
    }
           
        public User getUser1(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users = new Users();
        User user = new User();
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            user = users.getUser(email);
            
                
                
            return user;
        }
        
    }
           
          
}

