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

/**
 *
 * @author Hieu
 */
public class TopUpManagementFeature {
    
    @Given("I am on the main page")
public void i_am_on_the_main_page() {
    // Write code here that turns the phrase above into concrete actions\
    System.setProperty("webdriver.chrome.driver",System.getProperty("user.dir")+"\\chromedriver\\chromedriver.exe");
    WebDriver webDriver = new ChromeDriver();
    webDriver.get("http://localhost:8080/ASD-Test/main.jsp");
    throw new cucumber.api.PendingException();
}
@When("I fill in {string} with {string}")
public void i_fill_in_with(String string, String string2) {
    // Write code here that turns the phrase above into concrete actions
    System.setProperty("webdriver.chrome.driver",System.getProperty("user.dir")+"\\chromedriver\\chromedriver.exe");
    WebDriver webDriver = new ChromeDriver();
    webDriver.get("http://localhost:8080/ASD-Test/main.jsp");
    webDriver.navigate().to("http://localhost:8080/ASD-Test/login.jsp");
    //webDriver.navigate().to("http://localhost:8080/ASD-Test/login.jsp");
    webDriver.findElement(By.name("email")).sendKeys(string);
    webDriver.findElement(By.name("password")).sendKeys(string2);
    webDriver.findElement(By.name("login")).click();
    throw new cucumber.api.PendingException();
}


@Then("I click on {string} button")
public void i_click_on_button(String string) {
    // Write code here that turns the phrase above into concrete actions
    throw new cucumber.api.PendingException();
}

@Then("I should be on the main page")
public void i_should_be_on_the_main_page() {
    // Write code here that turns the phrase above into concrete actions
    throw new cucumber.api.PendingException();
}
}
