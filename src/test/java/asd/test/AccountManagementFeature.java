//package asd.test;
//
//
////import com.mongodb.MongoClient;
////import com.mongodb.MongoClientURI;
////import com.mongodb.client.MongoCollection;
////import com.mongodb.client.MongoDatabase;
////import static com.mongodb.client.model.Filters.and;
////import static com.mongodb.client.model.Filters.eq;
////import cucumber.api.java.After;
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import junit.framework.Assert;
//
////import org.bson.Document;
//import org.openqa.selenium.By;
////import org.openqa.selenium.Keys;
//
//import org.openqa.selenium.WebDriver;
////import org.openqa.selenium.WebElement;
//import org.openqa.selenium.support.ui.Select;
//
//
//
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
///**
// *
// * @author hanse
// */
//public class AccountManagementFeature extends Driver{
//    
//    WebDriver driver;
//
//    public AccountManagementFeature() {
//        driver = super.getDriver();
//    }
//    
//    /*////////////SCENARIO: Successfully view account details*//////////////////////////////////////
//    
//    @Given("the page is {string}")
//    public void the_page_is(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+ url);
//    }
//    
//    @When("the user chooses {string}")
//    public void the_user_chooses(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//        
//    @When("the user views {string}")
//    public void the_user_views(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//    
//    
//     @Then("the user should be directed to a page called {string}")
//    public void the_user_should_be_directed_to_a_page_called(String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//       driver.quit();
//   }
//        
//    ////////////////////////////////////////////////////////////////////////////////////////////
//    
//    
//    /*////////////SCENARIO: Succesfully update account details*////////////////////////////////
//    
//    @Given("user is on the page called {string}")
//    public void user_is_on_the_page_called(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+url);
//    }
//
//    @When("the user clicks on a button {string}")
//    public void the_user_clicks_on_a_button(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//
//    @When("the user wants to edit account details {string}")
//    public void the_user_wants_to_edit_account_details(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//
//
//    @When("the user fill in new details")
//    public void the_user_fill_in_new_details() {
//        driver.findElement(By.id("update_email")).clear();
//        driver.findElement(By.id("update_email")).sendKeys("tester@gmail.com");
//        driver.findElement(By.id("update_firstname")).clear();
//        driver.findElement(By.id("update_firstname")).sendKeys("Tom");
//        driver.findElement(By.id("update_lastname")).clear();
//        driver.findElement(By.id("update_lastname")).sendKeys("Cruise");
//        driver.findElement(By.id("update_phone")).clear();
//        driver.findElement(By.id("update_phone")).sendKeys("0432537584");
//        driver.findElement(By.id("update_address")).clear();
//        driver.findElement(By.id("update_address")).sendKeys("200 Summoners Rift");
//        driver.findElement(By.id("update_button")).click();
//    }
//
//    @When("the user goes back to account list {string}")
//    public void the_user_goes_back_to_account_list(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//
//
//    @Then("the page title should be {string}")
//    public void the_page_title_should_be(String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//       driver.quit();
//   }
// 
//    ////////////////////////////////////////////////////////////////////////////////////////////
//    
//    
//    /*////////////SCENARIO: Succesfully delete an account*///////////////////////////////////////
//
//    @Given("USER is at the page called {string}")
//    public void USER_is_at_the_page_called(String url) {
//        // Write code here that turns the phrase above into concrete actions
//        driver.get("https://asd-test-app.herokuapp.com/"+url);
//    }
//
//    @When("USER views account list {string}")
//    public void USER_views_account_list(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//    
//    @When("the User wants to delete an account {string}")
//    public void the_User_wants_to_delete_an_account(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//    
//    @When("the user confirms to delete account {string}")
//    public void the_user_confirms_to_delete_account(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//    
//     @When("the user chooses to go back to account list {string}")
//    public void the_user_chooses_to_go_back_to_account_list(String type) {
//        driver.findElement(By.id(type)).click();
//    }
//
//    @Then("USER should be directed to page {string}")
//    public void USER_should_be_directed_to_page(String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//       driver.quit();
//   }
//}
