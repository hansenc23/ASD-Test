$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/OrderFeature.feature");
formatter.feature({
  "name": "Order Opal Card Feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully order an Opal Card and edit an order as an anonymous user",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@removeAnonymousUser"
    }
  ]
});
formatter.step({
  "name": "User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"type_adult\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in contact detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_contact_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"contact_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select the top up value",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_select_the_top_up_value()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_payment_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_edit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in edit detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_edit_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"edit_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_confirm\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Succeed\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully order an Opal Card as a customer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@removeOrder"
    }
  ]
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as a customer",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_a_customer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"type_child\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select the top up value",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_select_the_top_up_value()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_payment_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_cancelled\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Cancelled\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "error_message": "junit.framework.AssertionFailedError\r\n\tat junit.framework.Assert.fail(Assert.java:55)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:22)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:31)\r\n\tat asd.test.OrderFeature.the_page_should_be_navigated_to(OrderFeature.java:103)\r\n\tat ✽.The page should be navigated to \"Order Cancelled\"(file:opalFeatures/OrderFeature.feature:31)\r\n",
  "status": "failed"
});
formatter.scenario({
  "name": "Successfully view the order history",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as a customer",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_a_customer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_history\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#order_history\"}\n  (Session info: chrome\u003d76.0.3809.132)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u0027172.19.162.223\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:49866}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 94cbe1a3723564e2eecc520c9200e596\n*** Element info: {Using\u003did, value\u003dorder_history}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.OrderFeature.user_Click_on(OrderFeature.java:46)\r\n\tat ✽.User Click on \"order_history\"(file:opalFeatures/OrderFeature.feature:36)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "The page should be navigated to \"Order History\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully view all the order",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is login as an admin",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_an_admin()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Management\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
});