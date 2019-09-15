$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/OrderFeature.feature");
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
      "name": "@revomeUser"
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
  "name": "User click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"type_adult\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"contact_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"orderConfirmation_edit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"edit_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"orderConfirmation_confirm\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully order an Opal Card as a customer",
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
  "name": "User click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"type_child\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "name": "User click on \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"orderConfirmation_cancelled\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
  "status": "passed"
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
  "name": "User click on \"order_history\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order History\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully view all the order",
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
  "name": "User click on \"order_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
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
formatter.uri("file:OpalFeatures/UserRegistrationFeature.feature");
formatter.feature({
  "name": "Online User Registration",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully created an account",
  "description": "",
  "keyword": "Scenario"
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
  "name": "User click on \"navbar_register\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the register detail",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_fill_in_the_register_detail()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#register_first_name\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u002710.0.0.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:54928}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 811751cb0e715f49892e3b71f3ee52e4\n*** Element info: {Using\u003did, value\u003dregister_first_name}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.RegisterFeature.User_fill_in_the_register_detail(RegisterFeature.java:34)\r\n\tat ✽.User fill in the register detail(file:OpalFeatures/UserRegistrationFeature.feature:6)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click on \"register_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"back\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"Home Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
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
  "name": "user fill in login details",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_fill_in_details()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u002710.0.0.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:54972}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 6ec63cb25d1f30e106f2a0063a35900a\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.RegisterFeature.user_fill_in_details(RegisterFeature.java:50)\r\n\tat ✽.user fill in login details(file:OpalFeatures/UserRegistrationFeature.feature:13)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click on \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"navbar_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"edit_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User update details",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_update_details()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"change_password\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "user update password",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_update_password()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"add_question\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "user choose from a list of question",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_choose_question()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"Profile\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully forget password",
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
  "name": "User click on \"forget_button\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user enter email address",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_enter_email_address()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#enter_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u002710.0.0.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55020}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: f4c02505c4589c62415c114b02829b66\n*** Element info: {Using\u003did, value\u003denter_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.RegisterFeature.user_enter_email_address(RegisterFeature.java:93)\r\n\tat ✽.user enter email address(file:OpalFeatures/UserRegistrationFeature.feature:30)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "user input answer",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_input_answer()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"Forget Password\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:OpalFeatures/loginFeature.feature");
formatter.feature({
  "name": "Access Manager",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "A user will be able to login , and logout",
  "description": "",
  "keyword": "Scenario"
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
  "name": "User click on \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill user information",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_user_information()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u002710.0.0.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55069}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 55f282ce961981f0d17fa1858191ada5\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.loginFeature.user_fill_user_information(loginFeature.java:39)\r\n\tat ✽.User fill user information(file:OpalFeatures/loginFeature.feature:6)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click on \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"navbar_logout\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"logout.jsp\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "A user want to delete their access history",
  "description": "",
  "keyword": "Scenario"
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
  "name": "User click on \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill user information",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_user_information()"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#login_email\"}\n  (Session info: chrome\u003d77.0.3865.75)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u002710.0.0.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.75, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\aasdd\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55122}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 6ce1d041b8796d3eaf61bfe44a5b68f2\n*** Element info: {Using\u003did, value\u003dlogin_email}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.loginFeature.user_fill_user_information(loginFeature.java:39)\r\n\tat ✽.User fill user information(file:OpalFeatures/loginFeature.feature:16)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click on \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"sidebar_accessManager\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User refresh page",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_refresh_page()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The page should be navigated to \"Access manager\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
});