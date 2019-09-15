/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;
import cucumber.api.java.en.Given;
import java.io.IOException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

/**
 *
 * @author Hieu
 */
public class TopUpManagementFeature extends Driver {

    
    WebDriver driver;

    public TopUpManagementFeature() {
        driver = super.getDriver();
    }
//    @Given("User is in the {string}")
//public void user_is_in_the(String url) {
//    // Write code here that turns the phrase above into concrete actions
//    driver.get("https://asd-test-app.herokuapp.com/"+url);
//}

    @When("User fill in user detail")
    public void user_fill_in_user_detail() {
    // Write code here that turns the phrase above into concrete actions
    driver.findElement(By.id("login_email")).sendKeys("kaido@gmail.com");
    driver.findElement(By.id("login_password")).sendKeys("qwe123456");

}

    @When("User click  {string}")
    public void user_click(String url) {
    // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id(url)).click();
 
}

    @When("User click {string}")
    public void user_click_loginsuccess(String url) {
    // Write code here that turns the phrase above into concrete actions
    driver.findElement(By.id(url)).click();
 
    }


    @When("User fill in paymentmethod detail")
    public void user_fill_in_paymentmethod_detail() {
        // Write code here that turns the phrase above into concrete actions
    driver.findElement(By.id("addPaymentMethod_firstName")).sendKeys("Hieu");
    driver.findElement(By.id("addPaymentMethod_lastName")).sendKeys("Nguyen");
    driver.findElement(By.id("addPaymentMethod_cardNumber")).sendKeys("9876987698769876");
    Select month = new Select(driver.findElement(By.id("addPaymentMethod_month_options")));
    month.selectByIndex(1);
    Select year = new Select(driver.findElement(By.id("addPaymentMethod_year_options")));
        year.selectByIndex(1);
    driver.findElement(By.id("addPaymentMethod_cvv")).sendKeys("123");  
    }

@When("User fill in update detail")
public void user_fill_in_update_detail() {
    // Write code here that turns the phrase above into concrete actions
    //clear prefilled input
    driver.findElement(By.id("updatePaymentmethod_firstName")).clear();
    driver.findElement(By.id("updatePaymentmethod_lastName")).clear();
    driver.findElement(By.id("updatePaymentmethod_cn")).clear();
    driver.findElement(By.id("updatePaymentmethod_cvv")).clear();
    
    driver.findElement(By.id("updatePaymentmethod_firstName")).sendKeys("Johnathan");
    driver.findElement(By.id("updatePaymentmethod_lastName")).sendKeys("Ma");
    driver.findElement(By.id("updatePaymentmethod_cn")).sendKeys("7654765476547654");
    Select month = new Select(driver.findElement(By.id("updatePaymentmethod_expiryMonth")));
    month.selectByIndex(2);
    Select year = new Select(driver.findElement(By.id("updatePaymentmethod_expiryYear")));
        year.selectByIndex(2);
    driver.findElement(By.id("updatePaymentmethod_cvv")).sendKeys("321");  
}

    @Then("User click   {string}")  
 public void user_click_update(String url) {
    // Write code here that turns the phrase above into concrete actions
    driver.findElement(By.id(url)).click();
    }
    //Scenario 2
 @When("User fill in payment amount")
public void user_fill_in_payment_amount() {
    // Write code here that turns the phrase above into concrete actions
    Select month = new Select(driver.findElement(By.id("topUpValue_amount")));
    month.selectByIndex(2);
    Select year = new Select(driver.findElement(By.id("topUpValue_cardNumber")));
    year.selectByIndex(1);
}

@When("User fill in the payment detail")
public void user_fill_in_the_payment_detail() {
    // Write code here that turns the phrase above into concrete actions
    driver.findElement(By.id("topUpCard_firstName")).sendKeys("Johnathan");
    driver.findElement(By.id("topUpCard_lastName")).sendKeys("Ma");
    driver.findElement(By.id("topUpCard_cardNumber")).sendKeys("3456354634563456");
    Select month = new Select(driver.findElement(By.id("topUpCard_month")));
    month.selectByIndex(2);
    Select year = new Select(driver.findElement(By.id("topUpCard_year")));
    year.selectByIndex(1);
    driver.findElement(By.id("topUpCard_cvv")).sendKeys("123");
}


}