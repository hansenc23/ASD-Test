//package asd.test;
//
//import asd.model.dao.MongoDBConnector;
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import java.net.UnknownHostException;
//import junit.framework.Assert;
//import org.openqa.selenium.By;
//
//import org.openqa.selenium.WebDriver;
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
// * @author anita
// */
//public class FAQsFeature extends Driver{
//    
//    WebDriver driver;
//    private static MongoDBConnector dbconnector;
//
//    public FAQsFeature() throws UnknownHostException {
//        driver = super.getDriver();
//        dbconnector = new MongoDBConnector();
//    }
//    
//    @Given("User is in the {string}")
//    public void user_is_in(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+url);
//    }
//
//    @When("User click on {string}")
//    public void user_click_on(String button) {
//        driver.findElement(By.id(button)).click();
//    }
//    
//    @Then("The page should be navigated to {string}")
//    public void the_page_should_be_navigated_to(String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//        driver.quit();
//    }
//    
//    @Given("User is login as an admin")
//    public void user_is_login_as_an_admin() {
//        driver.findElement(By.id("login_email")).sendKeys("staff@gmail.com");
//        driver.findElement(By.id("login_password")).sendKeys("staff");
//        driver.findElement(By.id("login_submit")).click();
//        driver.findElement(By.id("loginAction_success")).click();
//    }
//    
//    @When("User fill in the question")
//    public void user_fill_in_the_question() {
//        driver.findElement(By.id("question")).sendKeys("testQuestion");
//    }
//
//    @When("User fill in the answer")
//    public void user_fill_in_the_answer() {
//        driver.findElement(By.id("answer")).sendKeys("testAnswer");
//    }
//
//    @When("User click on the edit button")
//    public void user_click_on_the_edit_button() {
//        driver.findElement(By.id("testQuestion")).click();
//    }
//
//    @When("User fill in the updateQuestion")
//    public void user_fill_in_the_updateQuestion() {
//        driver.findElement(By.id("updateQuestion")).sendKeys("testUpdateAnswer");
//    }
//
//    @When("User fill in the updateAnswer")
//    public void user_fill_in_the_updateAnswer() {
//        driver.findElement(By.id("updateAnswer")).sendKeys("testUpdateAnswer");
//    }
//}
