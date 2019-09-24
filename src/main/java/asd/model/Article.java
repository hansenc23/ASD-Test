/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

/**
 *
 * @author Hieu
 */
public class Article {
    private String articleID;
    private String articleName;
    private String articleContent; 
    private String articleDate;
    public Article(String articleID,String articleName, String articleContent, String articleDate){
        this.articleID = articleID;
        this.articleName = articleName;
        this.articleContent= articleContent;
        this.articleDate = articleDate;    
    }

    /**
     * @return the articleName
     */
    public String getArticleName() {
        return articleName;
    }

    /**
     * @param articleName the articleName to set
     */
    public void setArticleName(String articleName) {
        this.articleName = articleName;
    }

    /**
     * @return the articleContent
     */
    public String getArticleContent() {
        return articleContent;
    }

    /**
     * @param articleContent the articleContent to set
     */
    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    /**
     * @return the articleDate
     */
    public String getArticleDate() {
        return articleDate;
    }

    /**
     * @param articleDate the articleDate to set
     */
    public void setArticleDate(String articleDate) {
        this.articleDate = articleDate;
    }

    /**
     * @return the articleID
     */
    public String getArticleID() {
        return articleID;
    }

    /**
     * @param articleID the articleID to set
     */
    public void setArticleID(String articleID) {
        this.articleID = articleID;
    }
    
    
}
