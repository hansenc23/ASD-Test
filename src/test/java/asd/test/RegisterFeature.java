
package asd.test;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;
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
    
    @Given("User is in the {string}")
    public void user_is_in_the(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }

    @When("User Click on {string}")
    public void user_Click_on(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("User fill in contact detail")
    public void user_fill_in_contact_detail() {
        driver.findElement(By.id("register_first_name")).sendKeys("Hansen");
        driver.findElement(By.id("register_last_name")).sendKeys("Christian");
        driver.findElement(By.id("register_email")).sendKeys("for12testing1@gmail.com");
        driver.findElement(By.id("register_password")).sendKeys("qwe123456");
        driver.findElement(By.id("register_phone")).sendKeys("0483329588");
        driver.findElement(By.id("register_address")).sendKeys("UTS");
        driver.findElement(By.id("register_submit")).click();
    }
    
    
    @When("User clicks {string}")
    public void user_Clicks(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @Then("The page should be navigated to {string}")
    public void the_page_should_be_navigated_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully update account details*////////////////////////////////
    
    @Given("user is in {string}")
    public void user_is_in(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }
    
    @When("user fill in login details")
    public void user_fill_in_details() {
        driver.findElement(By.id("login_email")).sendKeys("fortesting1@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("qwe123456");
        driver.findElement(By.id("login_submit")).click();
    }
    
    @When("user choose {string}")
    public void user_click(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("User Clicks on {string}")
    public void user_Clicks_on(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("User edits {string}")
    public void user_edits(String type) {
        driver.findElement(By.id(type)).click();
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
    
    @When("user click to {string}")
    public void user_click_to(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("user click change password {string}")
    public void user_click_change_password(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("user update password")
    public void user_update_password() {
        driver.findElement(By.id("password")).sendKeys("qwe123456");       
        driver.findElement(By.id("confirm_password")).sendKeys("qwe123456");
        driver.findElement(By.id("submit_password")).click();
        
    }
    
    @When("user is back to profile {string}")
    public void user_back_to_profile(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("user choose add security question {string}")
    public void user_add_security_question(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @When("user choose from a list of question")
    public void user_choose_question() {
        Select dropdown = new Select(driver.findElement(By.id("choose_question")));
        dropdown.selectByIndex(3);
        driver.findElement(By.id("input_answer")).sendKeys("spiderman");
        driver.findElement(By.id("confirm_question")).click();
               
    }
    
    @When("user goes back to profile {string}")
    public void user_goes_to_profile(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @Then("User should be directed to {string}")
    public void user_should_be_directed_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully forget password*///////////////////////////////////////
    
    @Given("user in {string}")
    public void user_in(String url) {
        // Write code here that turns the phrase above into concrete actions
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }

    @When("user chooses {string}")
    public void user_chooses(String type) {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id(type)).click();
    }

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
    
    @Then("page should be directed to {string}")
    public void page_should_be_directed_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
    
///////////////////////////////////////////////////////////////////////////////////////////////////////
}

