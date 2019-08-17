/*
 * Author: Georges Bou Ghantous
 *
 * This class provides the methods to establish connection between ASD-Demo-app
 * and MongoDBLab cloud Database. The data is saved dynamically on mLab cloud database as
 * as JSON format.
 */
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
    private String owner;
    private String password;

    public MongoDatabase getMongoDB(){
       MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
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
            users.add(new Document("Username", user.getEmail()).append("Password", user.getPassword()).append("First Name", user.getFirstName()).append("Last Name", user.getLastName()).append("Dob", user.getDob()).append("Phone", user.getPhoneNumber()));
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
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        Users users;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users = new Users();
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find()) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Dob"),(String) doc.get("PhoneNumber"));
                users.addUser(user);
            }
        }
        return users;
    }

     public ArrayList<User> loadAllUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        ArrayList<User> users;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users = new ArrayList<User>();
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            for (Document doc : userlist.find()) {
                User user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Dob"),(String) doc.get("PhoneNumber"));
                users.add(user);
            }
        }
        return users;
    }
    
    
    
    public User user(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds031965.mlab.com:31965/heroku_5s97hssp");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            user = new User((String) doc.get("FirstName"), (String) doc.get("LastName"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Dob"),(String) doc.get("PhoneNumber"));
        }
        return user;
    }

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }
}
