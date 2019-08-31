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
public class Time implements Serializable {
      private String customerEmail;
      private String loginID;
       private String loginT;
       private String logoutT;
       
    public Time(String customerEmail,String loginID, String loginT, String logoutT) {
        this.customerEmail = customerEmail;
        this.loginID = loginID;
        this.loginT = loginT;
        this.logoutT = logoutT;
    }

    public String getCustomerID() {
        return customerEmail;
    }
     public String getloginID() {
        return loginID;
    }

    public String getLoginT() {
        return loginT;
    }

    public void setCustomerID(String customerEmail) {
        this.customerEmail = customerEmail;
    }
  
    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }
    public void setLoginT(String loginT) {
        this.loginT = loginT;
    }

    public void setLogoutT(String logoutT) {
        this.logoutT = logoutT;
    }

    public String getLogoutT() {
        return logoutT;
    }
    
       
   
}