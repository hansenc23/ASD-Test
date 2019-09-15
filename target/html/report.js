$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/TopUpManagementFeature.feature");
formatter.feature({
  "name": "TopUpManagementFeature",
  "description": "     As a user of Opal project \n     I want to create/delete/update payment method\n     So that I can top up my card with my payment method",
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
  "name": "User fills all user detail",
  "keyword": "When "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_user_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"sidebar_paymentMethodManagement\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#sidebar_paymentMethodManagement\"}\n  (Session info: chrome\u003d76.0.3809.132)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-NDQN486\u0027, ip: \u0027172.19.185.106\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Hieu\\AppData\\Local...}, goog:chromeOptions: {debuggerAddress: localhost:51503}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: e4ed062f5fa8e02d315429d5635ca98b\n*** Element info: {Using\u003did, value\u003dsidebar_paymentMethodManagement}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.TopUpManagementFeature.user_clicks_onto1(TopUpManagementFeature.java:163)\r\n\tat ✽.User clicks onto \"sidebar_paymentMethodManagement\"(file:OpalFeatures/TopUpManagementFeature.feature:11)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User clicks onto \"paymentMethodManagement_addMethod\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fills all paymentmethod detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_paymentmethod_detail()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"addPaymentMethod_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"addPaymentMethodOutcome_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"9876987698769876\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fills all update detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_update_detail()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"updatePaymentmethod_update\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"updatePaymentmethod_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"7654765476547654\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"updatePaymentmethod_delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"updatePaymentmethod_back\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Successfully create top up card",
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
  "name": "User fills all user detail",
  "keyword": "When "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_user_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks onto \"sidebar_topUpValue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#sidebar_topUpValue\"}\n  (Session info: chrome\u003d76.0.3809.132)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-NDQN486\u0027, ip: \u0027172.19.185.106\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 76.0.3809.132, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\Hieu\\AppData\\Local...}, goog:chromeOptions: {debuggerAddress: localhost:51527}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 9574b16a257f50d88ec6b169c5f1dafb\n*** Element info: {Using\u003did, value\u003dsidebar_topUpValue}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.TopUpManagementFeature.user_clicks_onto1(TopUpManagementFeature.java:163)\r\n\tat ✽.User clicks onto \"sidebar_topUpValue\"(file:OpalFeatures/TopUpManagementFeature.feature:28)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User fills all payment amount",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_payment_amount()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"topUpValue_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fills all the payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fills_all_the_payment_detail()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks onto \"topUpCard_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_clicks_onto1(String)"
});
formatter.result({
  "status": "skipped"
});
});