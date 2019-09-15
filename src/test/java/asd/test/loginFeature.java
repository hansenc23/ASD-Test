
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import org.openqa.selenium.WebDriver;
/**
 *
 * @author kevin
 */
public class loginFeature extends Driver{
    WebDriver driver;

     public loginFeature() {
            driver = super.getDriver();
        }
 
@When("User register as user")
public void user_register_as_user() {
    
    driver.findElement(By.id("register_firstName")).sendKeys("Test");
        driver.findElement(By.id("register_lastName")).sendKeys("User");
        driver.findElement(By.id("register_email")).sendKeys("testMail@gmail.com");
        driver.findElement(By.id("register_password")).sendKeys("test123");
        driver.findElement(By.id("register_address")).sendKeys("Mars");
        driver.findElement(By.id("register_phoneNumber")).sendKeys("0-0-0");
        //driver.findElement(By.id("register_admin")).sendKeys("Mars");
    
    throw new cucumber.api.PendingException();
}
 
@When("User fill user information")
public void user_fill_user_information() {
    
    driver.findElement(By.id("login_email")).sendKeys("tom@gmail.com");
    driver.findElement(By.id("login_password")).sendKeys("tomcruise");
    
}        
@When("User refresh page")
       public void user_refresh_page(){
           driver.navigate().refresh();
       }
}

