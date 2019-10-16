/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

/**
 *
 * @author Michelle
 */
public class TransferBalanceFeature extends Driver {
    
    WebDriver driver;

    public TransferBalanceFeature() {
        driver = super.getDriver();
    }
    
    @Given("the User is already logs in to the website")
    public void the_User_is_already_logs_in_to_the_website() {
        driver.get("https://asd-test-app.herokuapp.com/login.jsp");
        driver.findElement(By.id("login_email")).sendKeys("my@gmail.com");
        driver.findElement(By.id("login_password")).sendKeys("123456");
        driver.findElement(By.id("login_submit")).click();
        driver.findElement(By.id("loginAction_success")).click();
    }

    @When("the User clicks the {string}")
    public void the_User_clicks_the(String sidebar) {
        driver.findElement(By.id(sidebar)).click();
    }

    @When("the User choose the {string}")
    public void the_User_choose_the(String inputField) {
        String input = "";
        if (inputField.equalsIgnoreCase("enterDate")) {
            driver.findElement(By.id(inputField)).sendKeys("16/10/2019");
        } else {
            switch(inputField) {
                case "fromOpalID":
                    input = "1111 2222 1111 2222";
                    break;
                case "toOpalID":
                    input = "9098 9098 9098 9098";
                    break;
                case "transferValue":
                    input = "5.00";
                    break;
            }
            Select inputType = new Select(driver.findElement(By.id(inputField)));
            inputType.selectByValue(input);
        }        
    }

    @When("the User submit it by clicks on {string}")
    public void the_User_submit_it_by_clicks_on(String submitName) {
        driver.findElement(By.id(submitName)).click();
    }

    @When("the User see that the details are correct")
    public void the_User_see_that_the_details_are_correct() {
        driver.findElements(By.xpath("//*[contains(text(),'Confirmation')]"));
        driver.findElements(By.xpath("//*[contains(text(),'From Opal')]"));
        driver.findElements(By.xpath("//*[contains(text(),'1111 2222 1111 2222')]"));
        driver.findElements(By.xpath("//*[contains(text(),'To Opal')]"));
        driver.findElements(By.xpath("//*[contains(text(),'9098 9098 9098 9098')]"));
        driver.findElements(By.xpath("//*[contains(text(),'Value')]"));
        driver.findElements(By.xpath("//*[contains(text(),'$5.00')]"));
    }

    @When("the User clicks on {string}")
    public void the_User_clicks_on(String buttonName) {
        driver.findElement(By.id(buttonName)).click();
    }

    @Then("the User should see transfer success message")
    public void the_User_should_see_transfer_success_message() {
        driver.findElements(By.xpath("//*[contains(text(),'success!')]"));
        driver.quit();
    }

    @When("the User edit the transfer balance details")
    public void the_User_edit_the_transfer_balance_details() {
        String[] inputField = {"fromOpalID", "toOpalID", "transferValue"};
        String[] input = {"9098 9098 9098 9098", "1111 2222 1111 2222", "5.00"};
        for (int i=0; i < input.length-1; i++) {
            Select inputType = new Select(driver.findElement(By.id(inputField[i])));
            inputType.selectByValue(input[i]);
        }
    }

    @Then("the User should see cancelled transfer message")
    public void the_User_should_see_cancelled_transfer_message() {
        driver.findElements(By.xpath("//*[contains(text(),'cancelled!')]"));
        driver.quit();
    }

    @Then("the User should see the list of transfer balance history")
    public void the_User_should_see_the_list_of_transfer_balance_history() {
        int totalTransfer = Integer.parseInt(driver.findElement(By.tagName("strong")).getText());
        int shownTransfers = driver.findElements(By.id("fromOpalID")).size();
        Assert.assertEquals(shownTransfers, totalTransfer);
        driver.quit();
    }

    @Then("the User should see record on the searched date")
    public void the_User_should_see_record_on_the_searched_date() {
        driver.findElements(By.xpath("//*[contains(text(),'16-10-2019')]"));
        driver.quit();
    }
}
