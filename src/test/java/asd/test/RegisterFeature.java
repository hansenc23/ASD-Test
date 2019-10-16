package asd.test;


//import com.mongodb.MongoClient;
//import com.mongodb.MongoClientURI;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import static com.mongodb.client.model.Filters.and;
//import static com.mongodb.client.model.Filters.eq;
//import cucumber.api.java.After;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;

//import org.bson.Document;
import org.openqa.selenium.By;
//import org.openqa.selenium.Keys;

import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.WebElement;
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
    
    @Given("User is at {string}")
    public void User_is_at(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+ url);
    }
    
    @When("User taps {string}")
    public void user_taps(String type) {
        driver.findElement(By.id(type)).click();
    }
        
    @When("User fill in the registration detail")
    public void User_fill_in_the_registration_detail() {
        driver.findElement(By.id("register_first_name")).sendKeys("Hansen");
        driver.findElement(By.id("register_last_name")).sendKeys("Christian");
        driver.findElement(By.id("register_email")).sendKeys("hansenTesting1345@gmail.com");
        driver.findElement(By.id("register_password")).sendKeys("qwe123456");
        driver.findElement(By.id("register_phone")).sendKeys("0483329588");
        driver.findElement(By.id("register_address")).sendKeys("UTS");
        driver.findElement(By.id("register_submit")).click();
        
    }
    
    @When("User backs {string}")
    public void User_backs(String type) {
        driver.findElement(By.id(type)).click();
    }
    
     @Then("user should be directed to {string}")
    public void user_should_be_directed_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
        
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully update account details*////////////////////////////////
    
    @Given("page is on {string}")
    public void page_is_on(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }

    @When("user fills login credentials")
    public void user_fills_login_credentials() {
        driver.findElement(By.id("login_email")).sendKeys("hansenTesting1345@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("qwe123456");
        driver.findElement(By.id("login_submit")).click();
    }

    @When("user login success {string}")
    public void user_click(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("user open profile {string}")
    public void user_open_profile(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("user click edit {string}")
    public void user_click_edit(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("User updates account details")
    public void User_updates_account_details() {
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

    @When("user goes back {string}")
    public void user_goes_back(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("user wants to change password {string}")
    public void user_wants_to_change_password(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("User fill in new password")
    public void User_fill_in_new_password() {
        driver.findElement(By.id("password")).sendKeys("qwe123456");       
        driver.findElement(By.id("confirm_password")).sendKeys("qwe123456");
        driver.findElement(By.id("submit_password")).click();

    }

    @When("user tap back {string}")
    public void user_tap_back(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("user wants to add question {string}")
    public void user_wants_to_add_question(String type) {
        driver.findElement(By.id(type)).click();
    }

    @When("user select the necessary question")
    public void user_select_the_necessary_question() {
        Select dropdown = new Select(driver.findElement(By.id("choose_question")));
        dropdown.selectByIndex(3);
        driver.findElement(By.id("input_answer")).sendKeys("spiderman");
        driver.findElement(By.id("confirm_question")).click();

    }

    @When("User go previous page {string}")
    public void User_go_previous_page(String type) {
        driver.findElement(By.id(type)).click();
    }

    @Then("User should see profile page {string}")
    public void User_should_see_profile_page(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
 
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*////////////SCENARIO: Succesfully forget password*///////////////////////////////////////

    @Given("the page shows {string}")
    public void the_page_shows(String url) {
        // Write code here that turns the phrase above into concrete actions
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }

    @When("user forgets {string}")
    public void user_forgets(String type) {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id(type)).click();
    }

    @When("User types email")
    public void User_types_email() {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id("enter_email")).sendKeys("tom@gmail.com");
        driver.findElement(By.id("confirm_email")).click();
    }
    @When("user answer the question")
    public void user_answer_the_question() {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id("input_answer")).sendKeys("spiderman");
        driver.findElement(By.id("confirm_answer")).click();
    }

    @Then("page will show old password {string}")
    public void page_will_show_old_password(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
       driver.quit();
   }
}
