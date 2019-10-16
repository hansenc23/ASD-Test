/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import asd.model.Article;
import static org.junit.Assert.*;
import asd.model.dao.MongoDBConnector;
import java.net.UnknownHostException;
import java.util.ArrayList;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author Hieu
 */
public class TransportNewsManagementUnitTest {
     private static MongoDBConnector dbconnector;
     private static Article article1;
     public TransportNewsManagementUnitTest() { 
     
     }
    @BeforeClass
    public static void createDbclass() throws UnknownHostException {
        dbconnector = new MongoDBConnector();
        System.out.println("Transport News Management feature");
    }
    
    @Test
    public void addArticle() throws  UnknownHostException{
        Article article = new Article("","Testing title for unit test", "testing content for content", "2019-2-20");
        String outcome = dbconnector.addArticle(article);
        assertEquals("Article has been created !", outcome);
    }
    
    @Test
    public void updateArticle() throws UnknownHostException{
        ArrayList<Article> articles = dbconnector.getArticles();
        for(Article article: articles){
         if(article.getArticleName().equalsIgnoreCase("Testing title for unit test")){
             article1 = article;
         }
        }
        if(article1 !=null){
            Article updateArticle = new Article(article1.getArticleID(),"updated title","updated content","2019-3-22");
            String outcome = dbconnector.updateoneArticle(updateArticle);
            assertEquals("Update was successful !", outcome);
        }
    }
    
    @Test
    public void deleteArticle() throws UnknownHostException{
        ArrayList<Article> articles = dbconnector.getArticles();
        for(Article article: articles){
         if(article.getArticleName().equalsIgnoreCase("Testing title for unit test") || article.getArticleName().equalsIgnoreCase("updated title") ){
             article1 = article;
         }
        }
        if(article1 !=null){
            String outcome = dbconnector.deleteoneArticle(article1.getArticleID());
            assertEquals("Article has been deleted!", outcome);
        }
    }
    
    @Test
    public void getArticles() throws UnknownHostException{
        String outcome = dbconnector.testGetArticles();
        assertEquals("Article has been fetched", outcome);
    }
    
    @AfterClass
    public static void deleteTestingRecord(){
        ArrayList<Article> articles = dbconnector.getArticles();
        for(Article article: articles){
         if(article.getArticleName().equalsIgnoreCase("Testing title for unit test") || article.getArticleName().equalsIgnoreCase("updated title") ){
             article1 = article;
         }
        }
        if(article1 !=null){
            String outcome = dbconnector.deleteoneArticle(article1.getArticleID());
            assertEquals("Article has been deleted!", outcome);
        }
    }
}
