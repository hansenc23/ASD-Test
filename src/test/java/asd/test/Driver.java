<<<<<<< HEAD
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package asd.test;
//
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.chrome.ChromeDriver;
//
///**
// *
// * @author aasdd
// */
//public class Driver {
//    
//    protected WebDriver driver;
//    
//    protected WebDriver getDriver(){
//        if(driver == null){ 
//            System.setProperty("webdriver.chrome.driver",System.getProperty("user.dir")+"\\chromedriver\\chromedriver.exe");
//            driver = new ChromeDriver();
//        }
//        return driver;
//    }
//    
//}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 *
 * @author aasdd
 */
public class Driver {
    
    protected WebDriver driver;
    
    protected WebDriver getDriver(){
        if(driver == null){ 
            System.setProperty("webdriver.chrome.driver",System.getProperty("user.dir")+"//chromedriver//chromedriver.exe");
            driver = new ChromeDriver();
        }
        return driver;
    }
    
}
>>>>>>> 7d8c2acc8a82907ecac7924ec9620c8c3f6d1626
