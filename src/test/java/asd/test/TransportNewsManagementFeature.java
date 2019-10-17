/////*
//// * To change this license header, choose License Headers in Project Properties.
//// * To change this template file, choose Tools | Templates
//// * and open the template in the editor.
//// */
//package asd.test;
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import org.junit.Assert;
//import org.openqa.selenium.By;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.support.ui.Select;
//
///**
// *
// * @author Hieu
// */
//public class TransportNewsManagementFeature extends Driver {
//    WebDriver driver;
//
//    public TransportNewsManagementFeature() {
//        driver = super.getDriver();
//    }
//    @Given("User is staying at {string}")
//    public void user_is_staying_at(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+url);
//    }
//
//@Given("User has been identified as an admin")
//public void user_has_been_identified_as_an_admin() {
//    driver.findElement(By.id("login_email")).sendKeys("flippingburger@gmail.com");
//    driver.findElement(By.id("login_password")).sendKeys("qwe123456");
//}
//
//@Given("User smash on the button {string}")
//public void user_smash_on_the_button(String url) {
//    driver.findElement(By.id(url)).click();
//}
//
//@Given("User entered all article details")
//public void user_entered_all_article_details() {
//    driver.findElement(By.id("titletxt")).sendKeys("Cucumber Test");
//    driver.findElement(By.id("contenttxt")).sendKeys("Cucumber Test content initial");
//
//}
//
//@Given("User entered all update details")
//public void user_entered_all_update_details() {
//    driver.findElement(By.id("titletxt")).clear();
//    driver.findElement(By.id("contenttxt")).clear();
//    driver.findElement(By.id("titletxt")).sendKeys("Cucumber Test updated");
//    driver.findElement(By.id("contenttxt")).sendKeys("Cucumber Test content updated");
//}
//
//@Given("User smash on the updated button {string}")
//public void user_smash_on_the_updated_button(String url) {
//    driver.findElement(By.id(url)).click();
//}
//
//@Then("The User should be navigated to {string}")
//public void the_User_should_be_navigated_to(String title) {
//     Assert.assertTrue(driver.getTitle().contains(title));
//     driver.quit();
//}
//}
