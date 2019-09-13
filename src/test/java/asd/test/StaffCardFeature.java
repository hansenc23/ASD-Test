///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import junit.framework.Assert;
//import org.openqa.selenium.By;
//
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.support.pagefactory.ByChained;
//import org.openqa.selenium.support.ui.Select;
///**
// *
// * @author Michelle
// */
//public class StaffCardFeature extends Driver {
//    
//    WebDriver driver;
//
//    public StaffCardFeature() {
//        driver = super.getDriver();
//    }
//    
//    @Given("the Staff is in the {string}")
//    public void the_Staff_is_in_the(String url) {
//        driver.get("https://asd-test-app.herokuapp.com/"+ url);
//        throw new cucumber.api.PendingException();
//    }
//
//    @When("the Staff click on {string}")
//    public void the_Staff_click_on(String buttonName) {
//        driver.findElement(By.id(buttonName)).click();
//        throw new cucumber.api.PendingException();
//    }
//
//    @When("the Staff fill in the new Opal Card details for {string}")
//    public void the_Staff_fill_in_the_new_Opal_Card_details_for(String opalID) {
//        opalID = opalID.equalsIgnoreCase("8888 8888 8888 8888") ?
//                opalID : "0990 0990 0990 0990";
//        driver.findElement(By.name("ID1")).sendKeys(opalID.substring(1,4));
//        driver.findElement(By.name("ID2")).sendKeys(opalID.substring(6,9));
//        driver.findElement(By.name("ID3")).sendKeys(opalID.substring(11, 14));
//        driver.findElement(By.name("ID4")).sendKeys(opalID.substring(16, 19));
//        
//        String securityCode = opalID.equalsIgnoreCase("8888 8888 8888 8888") ?
//                              "8888" : "0990";
//        driver.findElement(By.name("securityCode")).sendKeys(securityCode);
//        Select cardType = new Select(driver.findElement(By.name("type")));
//        cardType.selectByValue("Child");
//        throw new cucumber.api.PendingException();
//    }
//    
////  List all cards feature addition
//    @Then("the page should show all Opal cards")
//    public void the_page_should_show_all_Opal_cards() {
//        int totalCards = Integer.parseInt(driver.findElement(By.tagName("strong")).getText());
//        int shownCards = driver.findElements(By.name("opalID")).size();
//        Assert.assertTrue("All cards shown", (totalCards == shownCards));
//        driver.quit();
//        throw new cucumber.api.PendingException();
//    }
//}
