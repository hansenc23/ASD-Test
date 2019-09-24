/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.util.ArrayList;

/**
 *
 * @author Hieu
 */
public class Articles {
    private ArrayList<Article> articles = new ArrayList<>();
    public Articles(){
        
    }
    public ArrayList<Article> getList(){
        return articles;
    }
    public void addArticle(Article article) {
            articles.add(article);
    }
   
}
