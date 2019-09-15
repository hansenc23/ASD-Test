package asd.test;


import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hanse
 */
public class RegisterFeature extends Driver{
    
    WebDriver driver;

    public RegisterFeature() {
        driver = super.getDriver();
    }
    
    /*////////////SCENARIO: Succesfully created an account*//////////////////////////////////////
        
    @When("User fill in the register detail")
    public void User_fill_in_the_register_detail() {
        driver.findElement(By.id("register_first_name")).sendKeys("Hansen");
        driver.findElement(By.id("register_last_name")).sendKeys("Christian");
        driver.findElement(By.id("register_email")).sendKeys("fortesting1@gmail.com");
        driver.findElement(By.id("register_password")).sendKeys("qwe123456");
        driver.findElement(By.id("register_phone")).sendKeys("0483329588");
        driver.findElement(By.id("register_address")).sendKeys("UTS");
        driver.findElement(By.id("register_submit")).click();
    }
        
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully update account details*////////////////////////////////
       
    @When("user fill in login details")
    public void user_fill_in_details() {
        driver.findElement(By.id("login_email")).sendKeys("fortesting1@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("qwe123456");
        driver.findElement(By.id("login_submit")).click();
    }
    
    @When("User update details")
    public void user_update_details() {
        driver.findElement(By.id("update_firstname")).clear();
        driver.findElement(By.id("update_firstname")).sendKeys("Twisted");
        driver.findElement(By.id("update_lastname")).clear();
        driver.findElement(By.id("update_lastname")).sendKeys("Fate");
        driver.findElement(By.id("update_phone")).clear();
        driver.findElement(By.id("update_phone")).sendKeys("048000000");
        driver.findElement(By.id("update_address")).clear();
        driver.findElement(By.id("update_address")).sendKeys("187 George St");
        driver.findElement(By.id("update_button")).click();
    }
    
    @When("user update password")
    public void user_update_password() {
        driver.findElement(By.id("password")).sendKeys("qwe123456");       
        driver.findElement(By.id("confirm_password")).sendKeys("qwe123456");
        driver.findElement(By.id("submit_password")).click();
        
    }
   
    @When("user choose from a list of question")
    public void user_choose_question() {
        Select dropdown = new Select(driver.findElement(By.id("choose_question")));
        dropdown.selectByIndex(3);
        driver.findElement(By.id("input_answer")).sendKeys("spiderman");
        driver.findElement(By.id("confirm_question")).click();
               
    }
 
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully forget password*///////////////////////////////////////

    @When("user enter email address")
    public void user_enter_email_address() {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id("enter_email")).sendKeys("tom@gmail.com");
        driver.findElement(By.id("confirm_email")).click();
    }
    @When("user input answer")
    public void user_input_answer() {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id("input_answer")).sendKeys("spiderman");
        driver.findElement(By.id("confirm_answer")).click();
    }
}