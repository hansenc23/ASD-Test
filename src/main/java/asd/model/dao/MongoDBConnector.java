package asd.model.dao;

import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.model.*;
import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Filters.exists;
import com.mongodb.client.model.Sorts;
import com.mongodb.client.model.Updates;
import static com.mongodb.client.model.Updates.combine;
import java.util.regex.Pattern;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private List<Document> cards = new ArrayList();
    private List<Document> paymentMethods = new ArrayList();
    private List<Document> orders = new ArrayList();
    private List<Document> times = new ArrayList();
    private List<Document> enqiries = new ArrayList();
        

       
   

    public MongoDatabase getMongoDB(){
       MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       MongoDatabase db;
       try (MongoClient client = new MongoClient(uri)) {
            db = client.getDatabase(uri.getDatabase());
       }
       return db;
       
    }
    
    public MongoDBConnector() throws UnknownHostException {
        
    }
    
    public Users findUsersByID(String userID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            users = new Users();
            Pattern p = Pattern.compile(userID +".*");
            query.append("UserID", p);
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find(query)) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        }
        return users;
    }
    
    public Users findUsersByFirstName(String firstName) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            users = new Users();
            Pattern p = Pattern.compile(firstName +".*");
            query.append("FirstName", p);
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find(query)) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        }
        return users;
    }
    
    public Users findUsersByLastName(String lastName) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            users = new Users();
            Pattern p = Pattern.compile(lastName +".*");
            query.append("LastName", p);
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find(query)) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        }
        return users;
    }
    
    public Users findUsersByEmail(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            users = new Users();
            Pattern p = Pattern.compile(email +".*");
            query.append("Username", p);
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find(query)) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        }
        return users;
    }
    
    

    //Update account details
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
    
    
    
    //Update password
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
    
    
    //add user to database
    public void add(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users"); 
            Document userdoc = new Document().append("Username", user.getEmail()).append("Password", user.getPassword()).append("FirstName", user.getFirstName()).append("LastName", user.getLastName()).append("Address", user.getAddress()).append("PhoneNumber", user.getPhoneNumber()).append("isStaff", user.getIsStaff()).append("Position", user.getPosition()).append("UserID", user.getUserID());
            userlist.insertOne(userdoc);
        }
    }

    public void showUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
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
            MongoCollection<Document> timelist = db.getCollection("ASD-app-users");
            for (Document doc : timelist.find()) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"),(String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        }
        return users;
    }
    
    public User user(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));

        }
        return user;
    }
    
    public User returnUser(String userID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("UserID", userID)).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));

        }
        return user;
    }
    
    public User user(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));

        }
        return user;
    }
    
    

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
    
    
    public boolean isExist(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean exist = false;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Email", user.getEmail())).first();
            if (doc != null) {
                exist = true;
            }
        }
        return exist;
    }
   // delete user
    public void deleteUser(User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc = userlist.find(eq("Username", user.getEmail())).first();
            if (userdoc!=null){
            ObjectId _id = new ObjectId(userdoc.get("_id").toString());
            userlist.deleteOne(new Document("_id", _id));
            }
        }
    }
  //FOR TESTING
    public String testListUser() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users = new Users();
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find()) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
                users.addUser(user);
            }
        test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;
    }
    
     public String testGetUserID(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String userID;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find((eq("UserID", user.getUserID()))).first();
            userID = (String) doc.get("_id").toString();
            test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;  
    }
     
     public User testGetUser(String userID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("UserID", userID)).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("Position"), (String) doc.get("UserID"));
        }
        return user;
    } 
     public String testUpdateUser(User user){
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
                    outcome = "test succeed";
             
            
        }
        return outcome;
    }
     
     public String testUpdatePassword(User user){
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
                    outcome = "test succeed";
             
            
        }
        return outcome;
    }
     
     public String testAddSecurityQuestion(Question question, User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String outcome = "test succeed";
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = new Document().append("Question", question.getQuestion()).append("Answer", question.getAnswer());
            userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("SecurityQuestion",doc)));          
        }
        
        return outcome;
    }
     
     
    
    

//Payment and topup management
    
    //Add paymenthod to a particular User 
     public String addPayment(Paymentmethod paymt, User user){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String outcome = "There is an error when adding your payment method. Try again later!";
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
            
                if(i <= 3 && j <= 0){
                    userlist.updateOne(eq("Username", user.getEmail()),Updates.addToSet("PaymentMethod", doc) );
                    outcome = "Your payment method has been successfully added !";
                } else if (j >0 ){
                    outcome = "Your payment method has already been registered to your account !";
                } else {
                    outcome = "You can only have a maximum of 3 payment methods. Please delete your existing payment method to continue!";
                }
            }else {
                userlist.updateOne(eq("Username", user.getEmail()),Updates.addToSet("PaymentMethod", doc) );
                outcome = "Your payment method has been successfully added !";
            }
            return outcome;
           
            //new Document("$set", new Document("PaymentMethod",doc))
        }
    }
          //Edit payment methods 
              //Edit payment methods 
     public String editPaymentMethod(String initPaymentId,Paymentmethod paymt, User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome = "There was an error updating your payment method. Please try again later !";
         try(MongoClient client = new MongoClient(uri)){
             MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document userdoc =  userlist.find(eq("Username", user.getEmail())).first();
            if(userdoc.get("PaymentMethod") != null){
            paymentMethods = (List<Document>) userdoc.get("PaymentMethod");
            int i =0;
            int j = 0;
            for (Document paymentmethod : paymentMethods){
                i++;
                //check for duplicate card number inside PaymentMethod array
                if(paymentmethod.getString("CardNumber").equals(paymt.getCardNumber()) && !paymt.getCardNumber().equals(initPaymentId)){
                    j++;
                }
            }
            if(j == 0){
            //Document doc = new Document().append("FirstName", paymt.getFirstName()).append("LastName", paymt.getLastName()).append("CardNumber", paymt.getCardNumber()).append("ExpiryMonth", paymt.getExpiryMonth()).append("ExpiryYear", paymt.getExpiryYear()).append("CVV", paymt.getCvv());
                    ObjectId _id = new ObjectId(userdoc.get("_id").toString());
            
                    Bson filter = Filters.and(Filters.eq("_id",_id),Filters.eq("PaymentMethod.CardNumber",initPaymentId));
                    Bson updateFirstName = Updates.set("PaymentMethod.$.FirstName",paymt.getFirstName());
                    Bson updateLastName = Updates.set("PaymentMethod.$.LastName",paymt.getLastName());
                    Bson updateCardNumber = Updates.set("PaymentMethod.$.CardNumber",paymt.getCardNumber());
                    Bson updateExpiryMonth= Updates.set("PaymentMethod.$.ExpiryMonth",paymt.getExpiryMonth());
                    Bson updateExpiryYear = Updates.set("PaymentMethod.$.ExpiryYear",paymt.getExpiryYear());
                    Bson updateCVV= Updates.set("PaymentMethod.$.CVV",paymt.getCvv());
                    userlist.updateOne(filter, combine(updateFirstName,updateLastName,updateCardNumber,updateExpiryMonth,updateExpiryYear,updateCVV));      
                    outcome = "Update was successful !";
            } else if(i == 0) {
                outcome = "You do not have any payment methods yet !";
                } else {
                outcome= "Your updated details contains duplicated card number with other payment methods. Please put a valid method !";
            }
            } else {
                outcome = "You do not have any payment methods yet !";
            }
        }
    return outcome;
}
     //Remove payment method 
     public String deletePaymentMethods(String paymentId, User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome = "There was an error deleting your payment method. Please select a valid payment method !";
         try(MongoClient client = new MongoClient(uri)){
          MongoDatabase db = client.getDatabase(uri.getDatabase());
          MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
          Document userdoc =  userlist.find(eq("Username", user.getEmail())).first();
          ObjectId _id = new ObjectId(userdoc.get("_id").toString());
          Bson filter = Filters.eq("_id",_id);
          Bson delete = Updates.pull("PaymentMethod",new Document("CardNumber",paymentId));
          userlist.updateOne(filter,delete);
          outcome = "Your payment details were deleted successfully !";
         }
         return outcome;
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
   
       //Increase value of a specific card 
      public String addValue(String opalId, double amount){
          MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
          String  outCome = "Payment fails, Please try again";
           try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(eq("OpalID", opalId)).first();
            if (doc != null) {
                opallist.updateOne(eq("OpalID", opalId), new Document("$inc",new Document("Balance",amount)));
                outCome = "Payment Successful";
            }
           }
          return outCome;
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
    
     public String testAddTopUpPayment(TopUpPayment tpmt, User user){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String test;
           try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            MongoCollection<Document> topuplist = db.getCollection("ASD-app-topup");
            Document userdoc = userlist.find(and(eq("Username", user.getEmail()), eq("Password", user.getPassword()))).first();
            String userId = (String) userdoc.get("_id").toString();
            Document paymentdoc = new Document().append("UserId", userId).append("OpalId", tpmt.getOpalId()).append("Value", tpmt.getValue()).append("Date", tpmt.getDate());
            topuplist.insertOne(paymentdoc);
            test = "Test success";
            //userlist.updateOne(eq("Username", user.getEmail()), new Document("$set", new Document("PaymentMethod",doc)));                     
        }catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
          //Add Article 
    public String addArticle(Article article){
         String outcome = "There is an error creating article please try again later!";
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         try (MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> articleList = db.getCollection("ASD-app-articles");
            Document doc = new Document().append("ArticleTitle", article.getArticleName()).append("ArticleContent", article.getArticleContent()).append("ArticleDate", article.getArticleDate());
            articleList.insertOne(doc);
            outcome = "Article has been created !";
         }
         return outcome;
     }
      // Get Articles
    public ArrayList<Article> getArticles(){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
          ArrayList<Article> articles = new ArrayList<Article>();
         try (MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> articleList = db.getCollection("ASD-app-articles");
             for (Document art : articleList.find().sort(Sorts.descending("$natural"))) {
                String id = (String) art.get("_id").toString();
                Article article = new Article(id,(String) art.get("ArticleTitle"), (String) art.get("ArticleContent"), (String) art.get("ArticleDate"));
                articles.add(article);
            }
          
         }
         return articles;
    }
    //test get articles
    public String testGetArticles(){
        String outcome = "There is an error fetching articles please try again later!";
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
          ArrayList<Article> articles = new ArrayList<Article>();
         try (MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> articleList = db.getCollection("ASD-app-articles");
             for (Document art : articleList.find().sort(Sorts.descending("$natural"))) {
                String id = (String) art.get("_id").toString();
                Article article = new Article(id,(String) art.get("ArticleTitle"), (String) art.get("ArticleContent"), (String) art.get("ArticleDate"));
                articles.add(article);
            }
              outcome = "Article has been fetched";
          
         }
         return outcome;
    }
    // Delete an article
    public String deleteoneArticle(String articleId){
         String outcome = "There is an error delete article please try again later!";
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         try (MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> articleList = db.getCollection("ASD-app-articles");
            Document article = articleList.find(eq("_id",new ObjectId(articleId))).first();
            if(article!=null){
            ObjectId _id = new ObjectId(article.get("_id").toString());
            articleList.deleteOne(new Document("_id", _id));
            outcome = "Article has been deleted!";
            }
         }
         return outcome;
     }
    //Update an article
    public String updateoneArticle(Article article){
         String outcome = "There is an error updating your article please try again later!";
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         try (MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> articleList = db.getCollection("ASD-app-articles");
            Document articledoc = articleList.find(eq("_id",new ObjectId(article.getArticleID()))).first();
            if(articledoc!=null){
            ObjectId _id = new ObjectId(articledoc.get("_id").toString());
            Bson filter = Filters.and(Filters.eq("_id", _id));
            Bson updateArticleTitle = Updates.set("ArticleTitle", article.getArticleName());
            Bson updateArticleContent = Updates.set("ArticleContent", article.getArticleContent());
            articleList.updateOne(filter, combine(updateArticleTitle,updateArticleContent));      
            outcome = "Update was successful !";
            }
         }
         return outcome;
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
    

    
    
// CARD MANAGEMENT
    
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
            opallist.updateOne(eq("OpalID", card.getOpalID()), new Document("$unset", new Document("CustomerID", null))); 
        }
    }
    
    // For staff to show all opal cards
    public ArrayList<OpalCard> showAllCards() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<OpalCard> opalCards = new ArrayList<OpalCard>();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            for (Document doc : opallist.find()) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.add(card);
            }
        }
        return opalCards;   
    }
    
    
    //Get all opal card(s) of a particular user
    public ArrayList<OpalCard> getOpalCards(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<OpalCard> opalCards = new ArrayList<OpalCard>();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            for (Document doc : opallist.find(eq("CustomerID", customerID))) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.add(card);
            }
        }
        return opalCards;   
    }
   
    // Get the details of a card
    public OpalCard getCardDetails(String opalID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        OpalCard card;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(eq("OpalID", opalID)).first();
            card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"), (String) doc.get("CustomerID"));
        }
        return card;
    }
    
    // Get customer's name for staff to see in the card details page
    public String getCustomerName(String customerID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String name;
        try (MongoClient client = new MongoClient(uri)) {
            User user;
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("_id", new ObjectId(customerID))).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("UserID"));
            name = user.getFirstName() + " " + user.getLastName();
        }
        return name;
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
            Document doc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("SecurityCode", card.getSecurityCode()), exists("CustomerID", false))).first();
            if (doc != null) {
                correct = true;
            }
        }
        return correct;
    }
    
// 

    public String testRegisterCard(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = new Document().append("OpalID", card.getOpalID()).append("Balance", card.getBalance()).append("Type", card.getType()).append("SecurityCode", card.getSecurityCode());
            opallist.insertOne(doc);
            test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testLinkCard(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            opallist.updateOne(eq("OpalID", card.getOpalID()), new Document("$set", new Document("CustomerID", customerID))); 
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testUnlinkCard(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            opallist.updateOne(eq("OpalID", card.getOpalID()), new Document("$unset", new Document("CustomerID", null))); 
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testShowAllCards() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<OpalCard> opalCards = new ArrayList<OpalCard>();
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            for (Document doc : opallist.find()) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.add(card);
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testGetOpalCards(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<OpalCard> opalCards = new ArrayList<OpalCard>();
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            for (Document doc : opallist.find(eq("CustomerID", customerID))) {
                OpalCard card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"));
                opalCards.add(card);
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
   
    public String testGetCardDetails(String opalID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        OpalCard card;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(eq("OpalID", opalID)).first();
            card = new OpalCard((String) doc.get("OpalID"), (double) doc.get("Balance"), (String) doc.get("Type"), (String) doc.get("SecurityCode"), (String) doc.get("CustomerID"));
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testGetCustomerName(String customerID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String name = " ";
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            User user;
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("_id", new ObjectId(customerID))).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Address"), (String) doc.get("PhoneNumber"), (String) doc.get("isStaff"), (String) doc.get("UserID"));
            name = user.getFirstName() + " " + user.getLastName();
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testIsExist(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean exist = false;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(eq("OpalID", card.getOpalID())).first();
            if (doc != null) {
                exist = true;
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testIsLinked(OpalCard card, User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean linked = false;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            Document doc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("CustomerID", customerID))).first();
            if (doc != null) {
                linked = true;
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testIsAvailable(OpalCard card) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        boolean correct = false;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document doc = opallist.find(and(eq("OpalID", card.getOpalID()), eq("SecurityCode", card.getSecurityCode()), exists("CustomerID", false))).first();
            if (doc != null) {
                correct = true;
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
  // TRANSFER BALANCE MANAGEMENT 

    // Check whether the user's cards is valid to do the transfer balance
   public String validForTransfer(String customerID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String result = "";
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            int linkedCard = 0;
            int empty = 0;
            for (Document doc : opallist.find(and(eq("CustomerID", customerID)))) {
                if ((double) doc.get("Balance") <= 5){
                    empty += 1;
                }
                linkedCard += 1;
            }
            // If user has more than 2 cards and at least 1 card is more than $5
            // OR user has 2 cards and not valid card is 0 or 1 card
            if ((linkedCard >= 2 && empty <= (linkedCard-1)) || (linkedCard == 2 && empty < 2)) {
                result = "transferOK";
            // If user has less than 2 cards
            } else if (linkedCard < 2) {
                result = "cardsNO";
            // If user has more than 2 cards but all card's value is invalid
            } else {
                result = "transferNO";
            }
        }
        return result;
    } 
    
    // Transfer balance from an opal card to another card
    public void transferBalance(TransferBalance record) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> transferlist = db.getCollection("ASD-app-transferBalance");
            // Create new transfer balance record
            Document transferdoc = new Document().append("FromOpalID", record.getFromOpalID()).append("ToOpalID", record.getToOpalID()).append("Value", record.getValue()).append("CustomerID", record.getCustomerID()).append("TransferDate", record.getTransferDate());
            transferlist.insertOne(transferdoc);
            double value = record.getValue();
            // Deduct value from FromOpalID's balance
            opallist.updateOne(eq("OpalID", record.getFromOpalID()), new Document("$inc", new Document("Balance", ((double) -value)))); 
            // Add value to ToOpalID's balance
            opallist.updateOne(eq("OpalID", record.getToOpalID()), new Document("$inc", new Document("Balance", ((double) value)))); 
        }
    }
    
    // Get all transfer balance record of a user
    public ArrayList<TransferBalance> transferHistory(String input, String type) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<TransferBalance> records = new ArrayList<TransferBalance>();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> transferlist = db.getCollection("ASD-app-transferBalance");
            // If the input is a date, change the date format from DD/MM/YYYY tp DD-MM-YYYY
            if (type.equalsIgnoreCase("TransferDate")) {
                input = input.substring(8,10) + "-" + input.substring(5,7) + "-" + input.substring(0,4);
            }
            
            for (Document doc : transferlist.find(eq(type, input))) {
                TransferBalance record = new TransferBalance((String) doc.get("FromOpalID"), (String) doc.get("ToOpalID"), (double) doc.get("Value"), (String) doc.get("CustomerID"), (String) doc.get("TransferDate"));
                records.add(record);
            }
        }
        return records;
    }  
    
    public String testValidForTransfer(String customerID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        String result = "";
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            int linkedCard = 0;
            int empty = 0;
            for (Document doc : opallist.find(and(eq("CustomerID", customerID)))) {
                if ((double) doc.get("Balance") <= 5){
                    empty += 1;
                }
                linkedCard += 1;
            }
            // If user has more than 2 cards and at least 1 card is more than $5
            // OR user has 2 cards and not valid card is 0 or 1 card
            if ((linkedCard >= 2 && empty <= (linkedCard-1)) || (linkedCard == 2 && empty < 2)) {
                result = "transferOK";
            // If user has less than 2 cards
            } else if (linkedCard < 2) {
                result = "cardsNO";
            // If user has more than 2 cards but all card's value is invalid
            } else {
                result = "transferNO";
            }
            test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
     }

    public String testTransferBalance(TransferBalance record) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            MongoCollection<Document> transferlist = db.getCollection("ASD-app-transferBalance");
            // Create new transfer balance record
            Document transferdoc = new Document().append("FromOpalID", record.getFromOpalID()).append("ToOpalID", record.getToOpalID()).append("Value", record.getValue()).append("CustomerID", record.getCustomerID()).append("TransferDate", record.getTransferDate());
            transferlist.insertOne(transferdoc);
            double value = record.getValue();
            // Deduct value from FromOpalID's balance
            opallist.updateOne(eq("OpalID", record.getFromOpalID()), new Document("$inc", new Document("Balance", ((double) -value)))); 
            // Add value to ToOpalID's balance
            opallist.updateOne(eq("OpalID", record.getToOpalID()), new Document("$inc", new Document("Balance", ((double) value)))); 
            test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        }
        return test;
    }
    
    public String testTransferHistory(String input, String type) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        ArrayList<TransferBalance> records = new ArrayList<TransferBalance>();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> transferlist = db.getCollection("ASD-app-transferBalance");
            // If the input is a date, change the date format from YYYY/MM/DD tp DD-MM-YYYY
            if (type.equalsIgnoreCase("TransferDate")) {
                input = input.substring(8,10) + "-" + input.substring(5,7) + "-" + input.substring(0,4);
            }
            for (Document doc : transferlist.find(eq(type, input))) {
                TransferBalance record = new TransferBalance((String) doc.get("FromOpalID"), (String) doc.get("ToOpalID"), (double) doc.get("Value"), (String) doc.get("CustomerID"), (String) doc.get("TransferDate"));
                records.add(record);
            }
        test = "Test success";
        } catch (Exception error) {
            test = "Test error";
        } 
        return test;
    }
// 

    
//Order Management
    
    //add order
    public void add(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document doc = new Document().append("CustomerID", order.getCustomerId()).append("OpalID", order.getOpalId()).append("PaymentCard", order.getPaymentCard()).append("OpalType", order.getOpalType()).append("OrderDate", order.getOrderDate()).append("Value", order.getValue()).append("Status", order.getStatus());
            orderlist.insertOne(doc);
        }
    }
    
    //add the paymentmethod in an order
    public void add(Paymentmethod payment, Order order){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document doc = new Document().append("FirstName", payment.getFirstName()).append("LastName", payment.getLastName()).append("CardNumber", payment.getCardNumber()).append("ExpiryMonth", payment.getExpiryMonth()).append("ExpiryYear", payment.getExpiryYear()).append("CVV", payment.getCvv());     
            orderlist.updateOne(eq("OpalID", order.getOpalId()), new Document("$set", new Document("PaymentMethod",doc))); 
        }
    }
    
    //list all the orders
    public Orders listOrder() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Orders orders = new Orders();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            for (Document ord : orderlist.find()) {
                Order order = new Order((String) ord.get("CustomerID"), (String) ord.get("OpalID"), (String) ord.get("PaymentCard"), (String) ord.get("OpalType"), (String) ord.get("OrderDate"), (double) ord.get("Value"), (String) ord.get("Status"));
                orders.addOrder(order);
            }
        }
        return orders;
    }
    
    //get the order from the specific user
    public Orders getOrders(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Orders orders = new Orders();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            for (Document ord : orderlist.find(eq("CustomerID", customerID))) {
                Order order = new Order((String) ord.get("CustomerID"), (String) ord.get("OpalID"), (String) ord.get("PaymentCard"), (String) ord.get("OpalType"), (String) ord.get("OrderDate"), (double) ord.get("Value"), (String) ord.get("Status"));
                orders.addOrder(order);
            }
        }
        return orders;   
    }
    
    //get the orderID in mongodb  
    public String getOrderID(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String orderID;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document ord = orderlist.find((eq("OpalID", order.getOpalId()))).first();
            orderID = (String) ord.get("_id").toString();
        }
        return orderID;
    }
    
    //get order payment method
    public Paymentmethod getOrderPayment(Order order){
       MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       Paymentmethod payment;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document ordoc =  orderlist.find(eq("OpalID", order.getOpalId())).first();
            Document paydoc = (Document)ordoc.get("PaymentMethod");
            payment = new Paymentmethod((String) paydoc.get("FirstName"), (String) paydoc.get("LastName") ,(String) paydoc.get("CardNumber"), (int) paydoc.get("ExpiryMonth"), (int) paydoc.get("ExpiryYear"), (int) paydoc.get("CVV") );
        }
        return payment;       
   }
    
    
//FAQs
    
    public void add(FAQ faq) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            Document doc = new Document().append("Question", faq.getQuestionTitle()).append("Answer", faq.getAnswer());
            FAQlist.insertOne(doc);
        }
    }
    
    public ArrayList<FAQ> listFAQs() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<FAQ> FAQs = new ArrayList<FAQ>();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            for (Document doc : FAQlist.find()) {
                FAQ faq = new FAQ((String) doc.get("Question"), (String) doc.get("Answer"));
                FAQs.add(faq);
            }
        }
        return FAQs;   
    }
    
    public String getFAQid(FAQ faq) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String FAQid;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            Document doc = FAQlist.find(eq("Question", faq.getQuestionTitle())).first();
            FAQid = (String) doc.get("_id").toString();
        }
        return FAQid;
    }
    
    public String updateFAQs(String id, FAQ faq){
         MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
         String outcome;
         try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            ObjectId _id = new ObjectId(id);           
            Bson filter = Filters.and(Filters.eq("_id", _id));
            Bson updateQuestion = Updates.set("Question", faq.getQuestionTitle());
            Bson updateAnswer = Updates.set("Answer", faq.getAnswer());
    
            FAQlist.updateOne(filter, combine(updateQuestion,updateAnswer));
            outcome = "Update was successful !";  
        }catch(Exception error){
            outcome = "There was an error updating the FAQ. Please try again later !";
            
        }
         
         
        return outcome;
    }

    public String deleteFAQs(FAQ faq){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String outcome;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            Document doc = FAQlist.find(eq("Question", faq.getQuestionTitle())).first();
            if (doc!=null){
            ObjectId _id = new ObjectId(doc.get("_id").toString());
            FAQlist.deleteOne(new Document("_id", _id));
            }
            outcome = "Delete was successful !";  
        }catch(Exception error){
            outcome = "There was an error deleting the FAQ. Please try again later !";
        }
        return outcome;
    }
    
     
//For testing
    
    public String addFAQ(FAQ faq) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String outcome;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            Document doc = new Document().append("Question", faq.getQuestionTitle()).append("Answer", faq.getAnswer());
            FAQlist.insertOne(doc);
            outcome = "test succeed";
        }catch(Exception error){
            outcome = "error";
        }
        return outcome;
    }
    
    public String testListFAQs() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<FAQ> FAQs = new ArrayList<FAQ>();
        String outcome;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            for (Document doc : FAQlist.find()) {
                FAQ faq = new FAQ((String) doc.get("Question"), (String) doc.get("Answer"));
                FAQs.add(faq);
            }
            outcome = "test succeed";
        }catch(Exception error){
            outcome = "error";
        }
        return outcome;   
    }
    
    public String testGetFAQid(FAQ faq) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String FAQid;
        String outcome;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> FAQlist = db.getCollection("ASD-app-FAQs");
            Document doc = FAQlist.find(eq("Question", faq.getQuestionTitle())).first();
            FAQid = (String) doc.get("_id").toString();
            outcome = "test succeed";
        }catch(Exception error){
            outcome = "error";
        }
        return outcome;   
    }
    
    public String testAdd(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document doc = new Document().append("CustomerID", order.getCustomerId()).append("OpalID", order.getOpalId()).append("PaymentCard", order.getPaymentCard()).append("OpalType", order.getOpalType()).append("OrderDate", order.getOrderDate()).append("Value", order.getValue()).append("Status", order.getStatus());
            orderlist.insertOne(doc);
            test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;
    }
    
    public String testAdd(Paymentmethod payment, Order order){
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try(MongoClient client = new MongoClient(uri)){
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document doc = new Document().append("FirstName", payment.getFirstName()).append("LastName", payment.getLastName()).append("CardNumber", payment.getCardNumber()).append("ExpiryMonth", payment.getExpiryMonth()).append("ExpiryYear", payment.getExpiryYear()).append("CVV", payment.getCvv());     
            orderlist.updateOne(eq("OpalID", order.getOpalId()), new Document("$set", new Document("PaymentMethod",doc))); 
            test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;
    }
    
    
    
    public String testListOrder() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Orders orders = new Orders();
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            for (Document ord : orderlist.find()) {
                Order order = new Order((String) ord.get("CustomerID"), (String) ord.get("OpalID"), (String) ord.get("PaymentCard"), (String) ord.get("OpalType"), (String) ord.get("OrderDate"), (double) ord.get("Value"), (String) ord.get("Status"));
                orders.addOrder(order);
            }
        test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;
    }
    
    public String testGetOrders(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Orders orders = new Orders();
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            String customerID = getCustomerID(user.getEmail(), user.getPassword());
            for (Document ord : orderlist.find(eq("CustomerID", customerID))) {
                Order order = new Order((String) ord.get("CustomerID"), (String) ord.get("OpalID"), (String) ord.get("PaymentCard"), (String) ord.get("OpalType"), (String) ord.get("OrderDate"), (double) ord.get("Value"), (String) ord.get("Status"));
                orders.addOrder(order);
            }
        test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;   
    }
    
    public String testGetOrderID(Order order) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String orderID;
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document ord = orderlist.find((eq("OpalID", order.getOpalId()))).first();
            orderID = (String) ord.get("_id").toString();
            test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;  
    }
    
    public String testGetOrderPayment(Order order){
       MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       Paymentmethod payment;
       String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document ordoc =  orderlist.find(eq("OpalID", order.getOpalId())).first();
            Document paydoc = (Document)ordoc.get("PaymentMethod");
            payment = new Paymentmethod((String) paydoc.get("FirstName"), (String) paydoc.get("LastName") ,(String) paydoc.get("CardNumber"), (int) paydoc.get("ExpiryMonth"), (int) paydoc.get("ExpiryYear"), (int) paydoc.get("CVV") );
            test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;      
   }
    
    public Order testGetOrder(String opalID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Order order;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> orderlist = db.getCollection("ASD-app-orders");
            Document ord = orderlist.find(eq("OpalID", opalID)).first();
            order = new Order((String) ord.get("CustimerID"), (String) ord.get("OpalID"), (String) ord.get("PaymentCard"), (String) ord.get("OpalType"), (String) ord.get("OrderDate"), (double) ord.get("Value"), (String) ord.get("Status"));
        }
        return order;
    } 
    public String testGetCustomerID(String email) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String customerID;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(eq("Username", email)).first();
            customerID = (String) doc.get("_id").toString();
        }
        return customerID;
    }
//    
    
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

           
          

    public Times loadUserTimes(String customerID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Times times;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            times = new Times();
            Pattern p = Pattern.compile(customerID);
            query.append("customerID", p);
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            for (Document doc : timelist.find(query)) {
                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("logoutT"));
                times.addTime(time);
            }
        }
        return times;
    }
    public Times userSearchTimes(String customerID,String loginT) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Times times;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            times = new Times();
            Pattern p = Pattern.compile(customerID);
            Pattern t = Pattern.compile(loginT +".*");
            query.append("loginT",t);
            query.append("customerID", p);
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            for (Document doc : timelist.find(query)) {
                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("logoutT"));
                times.addTime(time);
            }
        }
        return times;
    }
              //Enqiry Manager
    public void add(Enqiry enqiry) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            enqiries.add(new Document("customerID", enqiry.getCustomerID()).append("question", enqiry. getQuestion()).append("answer", enqiry.getAnswer()).append("enqiryID", enqiry.getEnqiryID()).append("title", enqiry.getTitle()));
            MongoCollection<Document> enqirylist = db.getCollection("ASD-app-enqiries"); //Create a collection ASD-app-times on mLab
           enqirylist.insertMany(enqiries);
        }
    }  
    public Enqiries loadEnqiries() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Enqiries enqiries;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            enqiries = new Enqiries();
            MongoCollection<Document> enqirylist = db.getCollection("ASD-app-enqiries");
            for (Document doc : enqirylist.find()) {
                Enqiry enqiry = new Enqiry((String) doc.get("customerID"), (String) doc.get("question"), (String) doc.get("answer"), (String) doc.get("enqiryID"),(String) doc.get("title"));
                enqiries.addEnqiry(enqiry);
            }
        }
        return enqiries;
    }
    public Enqiry findEnqiry(String enqiryID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
       
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
        
            MongoCollection<Document> enqirylist = db.getCollection("ASD-app-enqiries");
            Document doc = enqirylist.find(eq("enqiryID", enqiryID)).first();
            Enqiry enqiry = new Enqiry((String) doc.get("customerID"), (String) doc.get("question"), (String) doc.get("answer"), (String) doc.get("enqiryID"),(String) doc.get("title"));
            return enqiry;
        }
      
    }
    public void removeEnqiries(String enqiryID) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            
            MongoCollection<Document> enqirylist = db.getCollection("ASD-app-enqiries"); //
            enqirylist.deleteOne(eq("enqiryID", enqiryID));
        }
    }
     public void answerEnqiries(String enqiryID, String answer) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());            
            MongoCollection<Document> enqirylist = db.getCollection("ASD-app-enqiries"); //
            enqirylist.updateOne(eq("enqiryID", enqiryID),new Document("$set", new Document("answer",answer)));
        }
    }


    
   public String testAdd(Time time) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        String test;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            times.add(new Document("customerID", time.getCustomerID()).append("loginID", time. getloginID()).append("loginT", time.getLoginT()).append("logoutT", time.getLogoutT()));
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times"); //Create a collection ASD-app-times on mLab
            timelist.insertMany(times);
            test = "test succeed";
                }catch(Exception error){
                     test = "error";
             }
        return test;
    }
     public String testUserSearchTimes(String customerID,String loginT) {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        Times times;
        String test;
        BasicDBObject query = new BasicDBObject();
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());   
            times = new Times();
            Pattern p = Pattern.compile(customerID);
            Pattern t = Pattern.compile(loginT +".*");
            query.append("loginT",t);
            query.append("customerID", p);
            MongoCollection<Document> timelist = db.getCollection("ASD-app-times");
            for (Document doc : timelist.find(query)) {
                Time time = new Time((String) doc.get("customerID"), (String) doc.get("loginID"), (String) doc.get("loginT"), (String) doc.get("logoutT"));
                times.addTime(time);
                
            }
        test = "test succeed";
        }catch(Exception error){
            test = "error";
        }
        return test;
    }
}