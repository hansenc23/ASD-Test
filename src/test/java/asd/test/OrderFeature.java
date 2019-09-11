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
 * @author aasdd
 */
public class OrderFeature extends Driver{
    
    WebDriver driver;

    public OrderFeature() {
        driver = super.getDriver();
    }
    
    @Given("User is in the {string}")
    public void user_is_in_the(String url) {
        driver.get("https://asd-test-app.herokuapp.com/"+url);
    }

    @When("User Click on {string}")
    public void user_Click_on(String type) {
        driver.findElement(By.id(type)).click();
    }
    
    @Then("The page should be navigated to {string}")
    public void the_page_should_be_navigated_to(String title) {
        Assert.assertTrue(driver.getTitle().contains(title));
    }

    @When("User fill in contact detail")
    public void user_fill_in_contact_detail() {
        driver.findElement(By.id("contact_first_name")).sendKeys("MelSun");
        driver.findElement(By.id("contact_last_name")).sendKeys("Chen");
        driver.findElement(By.id("contact_email_address")).sendKeys("ms0111@gmail.com");
        driver.findElement(By.id("contact_mobile_phone")).sendKeys("0961190788");
        driver.findElement(By.id("contact_address")).sendKeys("Taiwan");
        driver.findElement(By.id("contact_tos")).click();
    }
    
    @When("User select the top up value")
    public void user_select_the_top_up_value() {
        Select amount = new Select(driver.findElement(By.id("order_value_select")));
        amount.selectByIndex(1);
    }

    @When("User fill in payment detail")
    public void user_fill_in_payment_detail() {
        driver.findElement(By.id("paymentDetail_first_name")).sendKeys("MelSun");
        driver.findElement(By.id("paymentDetail_last_name")).sendKeys("Chen");
        driver.findElement(By.id("paymentDetail_card_number")).sendKeys("2345678912345678");
        Select expirymonth = new Select(driver.findElement(By.id("paymentDetail_expiry_month")));
        expirymonth.selectByValue("07");
        Select expiryyear = new Select(driver.findElement(By.id("paymentDetail_expiry_year")));
        expiryyear.selectByValue("24");
        driver.findElement(By.id("paymentDetail_cvv")).sendKeys("453");
    }

    @When("User fill in edit detail")
    public void user_fill_in_edit_detail() {
        driver.findElement(By.id("edit_first_name")).sendKeys("Kai");
        driver.findElement(By.id("edit_last_name")).sendKeys("Hsu");
        driver.findElement(By.id("edit_email_address")).sendKeys("cowKaiHsu@gmail.com");
        driver.findElement(By.id("edit_mobile_phone")).sendKeys("0225189981");
        driver.findElement(By.id("edit_address")).sendKeys("Austrlia");
        Select amount = new Select(driver.findElement(By.id("edit_value")));
        amount.selectByValue("15.0");
        driver.findElement(By.id("edit_payment_first_name")).sendKeys("Kai");
        driver.findElement(By.id("edit_payment_last_name")).sendKeys("Hsu");
        driver.findElement(By.id("edit_payment_card_number")).sendKeys("9876765454326789");
        Select expirymonth = new Select(driver.findElement(By.id("edit_payment_expiry_month")));
        expirymonth.selectByValue("11");
        Select expiryyear = new Select(driver.findElement(By.id("edit_payment_expiry_year")));
        expiryyear.selectByValue("26");
        driver.findElement(By.id("edit_payment_cvv")).sendKeys("374");
    }

    @When("User click {string}")
    public void user_click(String button) {
        driver.findElement(By.id(button)).click();
    }
}