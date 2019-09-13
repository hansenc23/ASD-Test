/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;

/**
 *
 * @author kevin
 */
public class Enqiry implements Serializable{

      private String customerID;
      private String question;
       private String answer;
       private String enqiryID;
         private String title;


    public Enqiry(String customerID, String question, String answer, String enqiryID, String title) {
        this.customerID = customerID;
        this.question = question;
        this.answer = answer;
        this.enqiryID = enqiryID;
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getEnqiryID() {
        return enqiryID;
    }

    public void setEnqiryID(String enqiryID) {
        this.enqiryID = enqiryID;
    }
       
       }
   