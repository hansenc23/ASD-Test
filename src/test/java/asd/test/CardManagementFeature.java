/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;


import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;
import org.bson.Document;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
/**
 *
 * @author Michelle
 */
public class CardManagementFeature extends Driver { 
    
    WebDriver driver;

    public CardManagementFeature() {
        driver = super.getDriver();
    }
    
    @Given("the User is logged in to the website")
    public void the_User_is_logged_in_to_the_website() {
        driver.get("https://asd-test-app.herokuapp.com/login.jsp");
        driver.findElement(By.id("login_email")).sendKeys("my@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("123456");
        driver.findElement(By.id("login_submit")).click();
        driver.findElement(By.id("loginAction_success")).click();
    }

    @Given("is in the {string}")
    public void is_in_the(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+ url);
    }

//    @When("User click on {string}")
//    public void user_click_on(String buttonName) {
//        driver.findElement(By.id(buttonName)).click();
//    }
    
        @When("User clicks {string}")
    public void user_clicks(String buttonName) {
        driver.findElement(By.id(buttonName)).click();
    }

    @When("User fill in {string} with {string}")
    public void user_fill_in_with(String fieldName, String userInput) {
        String numbers = "8888";
        if (fieldName.equalsIgnoreCase("OpalID")) {
            String opalID = userInput.equalsIgnoreCase("0000 0000 0000 0000") ? 
                            userInput : numbers;
            driver.findElement(By.name("ID1")).sendKeys(opalID.substring(0, 4));
            driver.findElement(By.name("ID2")).sendKeys(opalID.substring(0, 4));
            driver.findElement(By.name("ID3")).sendKeys(opalID.substring(0, 4));
            driver.findElement(By.name("ID4")).sendKeys(opalID.substring(0, 4));
        } else if (fieldName.equalsIgnoreCase("securityCode")) {
            driver.findElement(By.name("ID4")).sendKeys(Keys.TAB);
            String code = userInput.equalsIgnoreCase("0000") ? 
                                  userInput : numbers;
            driver.findElement(By.name("securityCode")).sendKeys(code);
        }
    }

    @Then("the page should give a green success feedback")
    public void the_page_should_give_a_green_success_feedback() {
        boolean exists;
        exists = !driver.findElements( By.className("success") ).isEmpty();
        String result = exists ? "Link card success" : "Failure";
        Assert.assertEquals("Link card success", result);
        driver.quit();
    }

    @Then("the page should give a red fail feedback")
    public void the_page_should_give_a_red_fail_feedback() {
        boolean exists;
        exists = !driver.findElements( By.className("fail") ).isEmpty();
        String result = exists ? "Link card fail" : "Failure";
        Assert.assertEquals("Link card fail", result);
        driver.quit();
    }
//     
    @When("User submit by clicking {string}")
    public void user_submit_by_clicking(String submitName) {
         driver.findElement(By.name(submitName)).click();
    }
    
//  Unlink feature addition
    
    @When("User click on {string} for {string}")
    public void user_click_on_for(String buttonName, String opalID) {
        if (buttonName.equalsIgnoreCase("unlink")) {
            WebElement id = driver.findElement(By.xpath("//input[@type='hidden'][@value='8888 8888 8888 8888']"));
            WebElement form = id.findElement(By.xpath("./.."));
            form.click();
            driver.switchTo().alert().accept(); 
        } else if (buttonName.equalsIgnoreCase("Details")) {
            WebElement id = driver.findElement(By.xpath("//input[@type='hidden'][@value='1111 2222 1111 2222']"));
            WebElement form = id.findElement(By.xpath("./.."));
            form.click();
        }
    }

    @Then("User should not see {string} in the {string}")
    public void user_should_not_see_in_the(String opalID, String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
        opalID = "8888 8888 8888 8888";
        boolean notexists = driver.findElements( By.name(opalID) ).isEmpty();
        String result = notexists ? "Unlink success" : "Failure";
        Assert.assertEquals("Unlink success", result);
        driver.quit();
    }  
    
//    View Details feature addition
    
    @Then("the page should be navigated to {string}")
    public void the_page_should_be_navigated_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
        driver.quit();
    }
    
//  Search Opal feature addition

    @When("User select an {string}")
    public void user_select_an(String string) {
        Select opalCard = new Select(driver.findElement(By.id("searchID")));
        opalCard.selectByValue("1111 2222 1111 2222");
    }

    @Then("the searched {string} should be shown in the page")
    public void the_searched_should_be_shown_in_the_page(String string) {
        boolean found = !driver.findElements(By.xpath("//input[@type='hidden'][@value='1111 2222 1111 2222']")).isEmpty();
        boolean notfound = driver.findElements(By.xpath("//input[@type='hidden'][@value='9098 9098 9098 9098']")).isEmpty();
        Assert.assertEquals(true, found);
        Assert.assertEquals(true, notfound);
        driver.quit();
    }
    
    
    /*  STAFF   */
    @Given("the Staff is logged in to the website")
    public void the_Staff_is_loggied_in_to_the_website() {
        driver.get("https://asd-test-app.herokuapp.com/login.jsp");
        driver.findElement(By.id("login_email")).sendKeys("staff@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("staff");
        driver.findElement(By.id("login_submit")).click();
        driver.findElement(By.id("loginAction_success")).click();
    }

    @When("the Staff click on {string}")
    public void the_Staff_click_on(String buttonName) {
        driver.findElement(By.id(buttonName)).click();
    }

    @When("the Staff fill in the new Opal Card details for {string}")
    public void the_Staff_fill_in_the_new_Opal_Card_details_for(String opalID) {
        opalID = opalID.equalsIgnoreCase("8888 8888 8888 8888") ?
                opalID : "0990 0990 0990 0990";
        driver.findElement(By.name("ID1")).sendKeys(opalID.substring(0,4));
        driver.findElement(By.name("ID2")).sendKeys(opalID.substring(5,9));
        driver.findElement(By.name("ID3")).sendKeys(opalID.substring(10, 14));
        driver.findElement(By.name("ID4")).sendKeys(opalID.substring(15, 19));
        
        String securityCode = opalID.equalsIgnoreCase("8888 8888 8888 8888") ?
                              "8888" : "0990";
        driver.findElement(By.name("securityCode")).sendKeys(securityCode);
        Select cardType = new Select(driver.findElement(By.name("type")));
        cardType.selectByValue("Child");
    }
    
    @When("the Staff submit by clicking {string}")
    public void the_Staff_submit_by_clicking (String buttonName) {
        driver.findElement(By.name(buttonName)).click();
    }
    
    @Then("the page should shows a green success feedback")
    public void the_page_should_shows_a_green_success_feedback() {     
        boolean exists;
        exists = !driver.findElements( By.className("success") ).isEmpty();
        String result = exists ? "Register card success" : "Failure";
        Assert.assertEquals("Register card success", result);
        driver.quit();
    }

    @Then("the page should shows a red fail feedback")
    public void the_page_should_shows_a_red_fail_feedback() {
        boolean exists;
        exists = !driver.findElements(By.xpath("//div[contains(@class, 'fail')]")).isEmpty();
        String result = exists ? "Register card fail" : "Failure";
        Assert.assertEquals("Register card fail", result);
        driver.quit();
    }
    
//  List all cards feature addition
    
    @Then("the page should show all Opal cards")
    public void the_page_should_show_all_Opal_cards() {
        int totalCards = Integer.parseInt(driver.findElement(By.tagName("strong")).getText());
        int shownCards = driver.findElements(By.name("opalID")).size();
        Assert.assertEquals(shownCards, totalCards);
        driver.quit();
    }
    
    @After("@register_card")
    public void removeTestCard() {
        MongoClientURI uri = new MongoClientURI("mongodb://nxhieuqn1:qwe123456@ds031965.mlab.com:31965/heroku_5s97hssp");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> opallist = db.getCollection("ASD-app-opalCards");
            Document opaldoc = opallist.find(and(eq("OpalID", "0990 0990 0990 0990"))).first();
            opallist.deleteOne(opaldoc);
        }
    }
}
