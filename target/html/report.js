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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"sidebar_linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cOpalID\u003e\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003csecurityCode\u003e\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should give a green success feedback",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"sidebar_linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"0000 0000 0000 0000\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"0000\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"sidebar_unlinkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"unlink\" for \"opalID\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User should not see \"opalID\" in the \"Unlink Card Page\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User select an \"OpalID\"",
  "keyword": "When "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User submit by clicking \"Search\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the searched \"OpalID\" should be shown in the page",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"Details\" for \"opalID\"",
  "keyword": "When "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should be navigated to \"Card Details Page\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"OpalID\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should shows a green success feedback",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"8888 8888 8888 8888\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should shows a red fail feedback",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the Staff click on \"show_all_cards\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should show all Opal cards",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.uri("file:opalFeatures/TopUpManagementFeature.feature");
formatter.feature({
  "name": "TopUpManagementFeature",
  "description": "    As a user of Opal project \n    I want to create/delete/update payment method\n    So that I can top up my card with my payment method",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully create/update/delete preffered payment method",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TopUpManagementFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in user detail",
  "keyword": "When "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_user_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"sidebar_paymentMethodManagement\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentMethodManagement_addMethod\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in paymentmethod detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_paymentmethod_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"addPaymentMethod_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"addPaymentMethodOutcome_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#addPaymentMethodOutcome_back\"}\n  (Session info: chrome\u003d76.0.3809.132)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-NDQN486\u0027, ip: \u0027172.19.185.106\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Hieu\\AppData\\Local...}, goog:chromeOptions: {debuggerAddress: localhost:52801}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 5ef5d5b56ac41e33761af487974ee773\n*** Element info: {Using\u003did, value\u003daddPaymentMethodOutcome_back}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.TopUpManagementFeature.user_click_loginsuccess(TopUpManagementFeature.java:52)\r\n\tat ✽.User click \"addPaymentMethodOutcome_back\"(file:opalFeatures/TopUpManagementFeature.feature:15)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click \"9876987698769876\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in update detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_update_detail()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_update\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"7654765476547654\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_back\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/UserRegistrationFeature.feature");
formatter.feature({
  "name": "Online User Registration",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully created a customer account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.user_is_in(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.WebDriverException: unknown error: cannot determine loading status\nfrom disconnected: received Inspector.detached event\n  (Session info: chrome\u003d76.0.3809.132)\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-NDQN486\u0027, ip: \u0027172.19.185.106\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Hieu\\AppData\\Local...}, goog:chromeOptions: {debuggerAddress: localhost:52825}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 2adee56b63e767dbeb873009c0dc627e\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.get(RemoteWebDriver.java:277)\r\n\tat asd.test.RegisterFeature.user_is_in(RegisterFeature.java:33)\r\n\tat ✽.User is in \"main.jsp\"(file:opalFeatures/UserRegistrationFeature.feature:8)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click on \"register\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should be navigated to \"register.jsp\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User fill in registration details",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_fill_in_registration_details()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "user click \"register\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"welcome.jsp\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.the_page_should_be_directed_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully update account details",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.user_is_in(String)"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.RegisterFeature.user_is_in(RegisterFeature.java:34)\r\n\tat ✽.User is in \"login.jsp\"(file:opalFeatures/UserRegistrationFeature.feature:18)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "User is logged in",
  "keyword": "Given "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"Welcome User\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should be navigated to \"accountProfile.jsp\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User click on \"edit\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User update necessary details",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user click on update",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User should see \"Update was successful\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user click on back",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "the page should be navigated to \"accountProfile.jsp\"",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
});