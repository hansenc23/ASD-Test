$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/CardManagementFeature.feature");
formatter.feature({
  "name": "Card Management Feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully link Opal card to account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"sidebar_linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cOpalID\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003csecurityCode\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should give a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_give_a_green_success_feedback()"
});
formatter.result({
  "status": "passed"
});
formatter.scenarioOutline({
  "name": "Failed linking Opal card with wrong Opal details",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.step({
  "name": "User click on \"sidebar_linkCard\"",
  "keyword": "When "
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cFailOpalID\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003cFailSecurityCode\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "User submit by clicking \"link\"",
  "keyword": "And "
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "FailOpalID",
        "FailSecurityCode"
      ]
    },
    {
      "cells": [
        "0000 0000 0000 0000",
        "0000"
      ]
    }
  ]
});
formatter.scenario({
  "name": "Failed linking Opal card with wrong Opal details",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"sidebar_linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"0000 0000 0000 0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_give_a_red_fail_feedback()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully unlink Opal card from account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"sidebar_unlinkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"unlink\" for \"opalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User should not see \"opalID\" in the \"Unlink Card Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.user_should_not_see_in_the(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully search an Opal Card by Opal ID",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select an \"OpalID\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_select_an(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#searchID\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027LAPTOP-CBD3LMIB\u0027, ip: \u0027172.19.183.95\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_202\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Michelle\\AppData\\L...}, goog:chromeOptions: {debuggerAddress: localhost:50890}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: fb66d500d24b49cce04c7c9b5cfff134\n*** Element info: {Using\u003did, value\u003dsearchID}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.CardManagementFeature.user_select_an(CardManagementFeature.java:137)\r\n\tat ✽.User select an \"OpalID\"(file:opalFeatures/CardManagementFeature.feature:40)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User submit by clicking \"Search\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the searched \"OpalID\" should be shown in the page",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_searched_should_be_shown_in_the_page(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully view the details of the Opal card",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"Details\" for \"opalID\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should be navigated to \"Card Details Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully register an Opal Card",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@register_card"
    }
  ]
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027LAPTOP-CBD3LMIB\u0027, ip: \u0027172.19.183.95\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_202\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Michelle\\AppData\\L...}, goog:chromeOptions: {debuggerAddress: localhost:50936}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: be03f1267dd03c43d681297944c7eb8d\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.CardManagementFeature.the_Staff_is_loggied_in_to_the_website(CardManagementFeature.java:153)\r\n\tat ✽.the Staff is logged in to the website(file:opalFeatures/CardManagementFeature.feature:53)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"OpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_submit_by_clicking(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should shows a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_shows_a_green_success_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "error_message": "java.lang.IllegalArgumentException: filter can not be null\r\n\tat com.mongodb.assertions.Assertions.notNull(Assertions.java:37)\r\n\tat com.mongodb.bulk.DeleteRequest.\u003cinit\u003e(DeleteRequest.java:41)\r\n\tat com.mongodb.MongoCollectionImpl.delete(MongoCollectionImpl.java:532)\r\n\tat com.mongodb.MongoCollectionImpl.deleteOne(MongoCollectionImpl.java:349)\r\n\tat com.mongodb.MongoCollectionImpl.deleteOne(MongoCollectionImpl.java:344)\r\n\tat asd.test.CardManagementFeature.removeTestCard(CardManagementFeature.java:220)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:26)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:16)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:20)\r\n\tat cucumber.runtime.java.JavaHookDefinition.execute(JavaHookDefinition.java:60)\r\n\tat cucumber.runner.HookDefinitionMatch.runStep(HookDefinitionMatch.java:16)\r\n\tat cucumber.runner.TestStep.executeStep(TestStep.java:65)\r\n\tat cucumber.runner.TestStep.run(TestStep.java:50)\r\n\tat cucumber.runner.TestCase.run(TestCase.java:50)\r\n\tat cucumber.runner.Runner.runPickle(Runner.java:49)\r\n\tat cucumber.runtime.junit.PickleRunners$NoStepDescriptions.run(PickleRunners.java:146)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:68)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:23)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:73)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:123)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:65)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat cucumber.api.junit.Cucumber$RunCucumber.evaluate(Cucumber.java:147)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat org.apache.maven.surefire.junit4.JUnit4TestSet.execute(JUnit4TestSet.java:53)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.executeTestSet(JUnit4Provider.java:123)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.invoke(JUnit4Provider.java:104)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat org.apache.maven.surefire.util.ReflectionUtils.invokeMethodWithArray(ReflectionUtils.java:164)\r\n\tat org.apache.maven.surefire.booter.ProviderFactory$ProviderProxy.invoke(ProviderFactory.java:110)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.invokeProvider(SurefireStarter.java:175)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.runSuitesInProcessWhenForked(SurefireStarter.java:107)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:68)\r\n",
  "status": "failed"
});
formatter.scenarioOutline({
  "name": "Failed register an Opal Card",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"\u003cExistedOpalID\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.step({
  "name": "the page should shows a red fail feedback",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "ExistedOpalID"
      ]
    },
    {
      "cells": [
        "8888 8888 8888 8888"
      ]
    }
  ]
});
formatter.scenario({
  "name": "Failed register an Opal Card",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027LAPTOP-CBD3LMIB\u0027, ip: \u0027172.19.183.95\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_202\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Michelle\\AppData\\L...}, goog:chromeOptions: {debuggerAddress: localhost:50952}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 6fa8a96ee560667036de826cd770d9a4\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.CardManagementFeature.the_Staff_is_loggied_in_to_the_website(CardManagementFeature.java:153)\r\n\tat ✽.the Staff is logged in to the website(file:opalFeatures/CardManagementFeature.feature:61)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"8888 8888 8888 8888\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_submit_by_clicking(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should shows a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_shows_a_red_fail_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully list all Opal cards",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027LAPTOP-CBD3LMIB\u0027, ip: \u0027172.19.183.95\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_202\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Michelle\\AppData\\L...}, goog:chromeOptions: {debuggerAddress: localhost:50966}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: dc9471a931c8e53ce79725f17c08c934\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.CardManagementFeature.the_Staff_is_loggied_in_to_the_website(CardManagementFeature.java:153)\r\n\tat ✽.the Staff is logged in to the website(file:opalFeatures/CardManagementFeature.feature:72)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"show_all_cards\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should show all Opal cards",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_show_all_Opal_cards()"
});
formatter.result({
  "status": "skipped"
});
});