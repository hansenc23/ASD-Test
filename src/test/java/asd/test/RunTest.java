/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.test;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 *
 * @author Michelle
 */

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "json:target/json/testReport.json", "html:target/html/"},
        features = {"OpalFeatures"})
public class RunTest {
    
}
