///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
//
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import junit.framework.Assert;
//import org.openqa.selenium.By;
//
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.support.pagefactory.ByChained;
///**
// *
// * @author Michelle
// */
//public class UserCardFeature extends Driver { 
//    
//    WebDriver driver;
//
//    public UserCardFeature() {
//        driver = super.getDriver();
//    }
//    
//    @Given("the User is logged in to the website")
//    public void the_User_is_logged_in_to_the_website() {
//        driver.get("https://asd-test-app.herokuapp.com/login.jsp");
//        driver.findElement(By.name("email")).sendKeys("my@gmail.com");
//        driver.findElement(By.name("password")).sendKeys("123456");
//        driver.findElement(By.xpath("//input[@type='submit']")).click();
//        driver.findElement(By.tagName("a")).click();
//        throw new cucumber.api.PendingException();
//    }
//
//    @Given("is in the {string}")
//    public void is_in_the(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+ url);
//        throw new cucumber.api.PendingException();
//    }
//
//    @When("User click on {string}")
//    public void user_click_on(String buttonName) {
//        driver.findElement(By.id(buttonName)).click();
//        throw new cucumber.api.PendingException();
//    }
//
//    @When("User fill in {string} with {string}")
//    public void user_fill_in_with(String fieldName, String userInput) {
//        if (fieldName.equalsIgnoreCase("OpalID")) {
//            String opalID = userInput.equalsIgnoreCase("0000 0000 0000 0000") ? 
//                            userInput : "8888 8888 8888 8888";
//            driver.findElement(By.name("ID1")).sendKeys(opalID.substring(1,4));
//            driver.findElement(By.name("ID2")).sendKeys(opalID.substring(6,9));
//            driver.findElement(By.name("ID3")).sendKeys(opalID.substring(11, 14));
//            driver.findElement(By.name("ID4")).sendKeys(opalID.substring(16, 19));
//        } else if (userInput.equalsIgnoreCase("securityCode")) {
//            String securityCode = userInput.equalsIgnoreCase("0000") ? 
//                                  userInput : "8888";
//            driver.findElement(By.name("securityCode")).sendKeys(securityCode);
//        }
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("the page should give a green success feedback")
//    public void the_page_should_give_a_green_success_feedback() {
//        boolean exists;
//        exists = !driver.findElements( By.className("success") ).isEmpty();
//        String result = exists ? "Link card success" : "Failure";
//        System.out.println(result);
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("the page should give a red fail feedback")
//    public void the_page_should_give_a_red_fail_feedback() {
//        boolean exists;
//        exists = !driver.findElements( By.className("fail") ).isEmpty();
//        String result = exists ? "Link card fail" : "Failure";
//        System.out.println(result);
//        throw new cucumber.api.PendingException();
//    }
//    
////  Unlink feature addition
//    
//    @When("User click on {string} for {string}")
//    public void user_click_on_for(String buttonName, String opalID) {
//        opalID = "8888 8888 8888 8888";
//        driver.findElement(new ByChained( By.name(opalID), By.name(buttonName))).click();
//        throw new cucumber.api.PendingException();
//    }
//
//    @Then("User should not see {string} in the {string}")
//    public void user_should_not_see_in_the(String opalID, String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//        opalID = "8888 8888 8888 8888";
//        boolean exists = !driver.findElements( By.name(opalID) ).isEmpty();
//        Assert.assertTrue("Opal card is unlinked", exists);
//        throw new cucumber.api.PendingException();
//    }  
//    
////  List feature addition
//
//    @Then("User should see list of their Opal cards")
//    public void user_should_see_list_of_their_Opal_cards() {
//        boolean exists;
//        exists = !driver.findElements( By.name("opalID") ).isEmpty();
//        String result = exists ? "List card success" : "Failure";
//        System.out.println(result);
//        throw new cucumber.api.PendingException();
//    }    
//    
//    
////    View Details feature addition
//    @Then("the page should be navigated to {string}")
//    public void the_page_should_be_navigated_to(String title) {
//        Assert.assertTrue(driver.getTitle().contains(title));
//        driver.quit();
//        throw new cucumber.api.PendingException();
//    }
//
////    @Then("the User can see the {string} details")
////    public void the_User_can_see_the_details(String string) {
////        
////        throw new cucumber.api.PendingException();
////    }
//}
