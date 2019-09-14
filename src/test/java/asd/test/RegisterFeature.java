//package asd.test;
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import junit.framework.Assert;
//import org.openqa.selenium.By;
//
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.support.ui.Select;
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//
///**
// *
// * @author hanse
// */
//public class RegisterFeature extends Driver {
//    
//    WebDriver driver;
//    public RegisterFeature() {
//        driver = super.getDriver();
//    }
//    
//    @Given("User is in {string}")
//    public void user_is_in(String url) {
//        // Write code here that turns the phrase above into concrete actions
//        driver.get("https://asd-test-app.herokuapp.com/"+url);
//        throw new cucumber.api.PendingException();
//    }
//
//    @When("User click on {string}")
//    public void user_click_on(String type) {
//        // Write code here that turns the phrase above into concrete actions
//        driver.findElement(By.id(type)).click();
//        throw new cucumber.api.PendingException();
//    }
//
////    @Then("the page should be navigated to {string}")
////    public void the_page_should_be_navigated_to(String string) {
////        // Write code here that turns the phrase above into concrete actions
////        throw new cucumber.api.PendingException();
////    }
//
//    @When("User fill in registration details")
//    public void user_fill_in_registration_details() {
//        // Write code here that turns the phrase above into concrete actions
//        driver.findElement(By.id("register_first_name")).sendKeys("Hansen");
//        driver.findElement(By.id("register_last_name")).sendKeys("Christian");
//        driver.findElement(By.id("register_email")).sendKeys("h.christian@gmail.com");
//        driver.findElement(By.id("register_password")).sendKeys("qwe123456");
//        driver.findElement(By.id("register_phone")).sendKeys("0495837264");
//        driver.findElement(By.id("register_address")).sendKeys("UTS");
//        driver.findElement(By.id("register_submit")).click();
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("user click {string}")
//    public void user_click(String string) {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("The page should be navigated to {string}")
//    public void the_page_should_be_directed_to(String title) {
//        // Write code here that turns the phrase above into concrete actions
//        Assert.assertTrue(driver.getTitle().contains(title));
//        driver.quit();
//        throw new cucumber.api.PendingException();
//    }

//    @Given("User is logged in")
//    public void user_is_logged_in() {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Given("User click on {string}")
//    public void user_click_on(String string) {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("User click on {string}")
//    public void user_click_on(String string) {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("User update necessary details")
//    public void user_update_necessary_details() {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("user click on update")
//    public void user_click_on_update() {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("User should see {string}")
//    public void user_should_see(String string) {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("user click on back")
//    public void user_click_on_back() {
//        // Write code here that turns the phrase above into concrete actions
//        throw new cucumber.api.PendingException();
//    }
    
//}