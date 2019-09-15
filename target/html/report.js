<<<<<<< HEAD
=======
$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/UserRegistrationFeature.feature");
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
  "location": "RegisterFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"navbar_register\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in contact detail",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_fill_in_contact_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks \"back\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_Clicks(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#back\"}\n  (Session info: chrome\u003d76.0.3809.132)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-CHTED21\u0027, ip: \u0027192.168.2.100\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_221\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\hanse\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:60932}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: c467a6c8d01421d1921c41f5045d04bc\n*** Element info: {Using\u003did, value\u003dback}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.RegisterFeature.user_Clicks(RegisterFeature.java:58)\r\n\tat ✽.User clicks \"back\"(file:opalFeatures/UserRegistrationFeature.feature:16)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "The page should be navigated to \"Home Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.the_page_should_be_navigated_to(String)"
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
  "name": "user is in \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.user_is_in(String)"
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
  "status": "passed"
});
formatter.step({
  "name": "user choose \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Clicks on \"navbar_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_Clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User edits \"edit_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_edits(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User update details",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_update_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user click to \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user click change password \"change_password\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click_change_password(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user update password",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_update_password()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user is back to profile \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_back_to_profile(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user choose add security question \"add_question\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_add_security_question(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user choose from a list of question",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_choose_question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user goes back to profile \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_goes_to_profile(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User should be directed to \"Profile\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.user_should_be_directed_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully forget password",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "user in \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.user_in(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user chooses \"forget_button\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_chooses(String)"
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
  "status": "passed"
});
formatter.step({
  "name": "user input answer",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_input_answer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "page should be directed to \"Forget Password\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.page_should_be_directed_to(String)"
});
formatter.result({
  "status": "passed"
});
});
>>>>>>> 7a5572d5c8b1d962ed6d6df59cf5e6a0c7c7f7a7
