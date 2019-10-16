$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/enqiryFeature.feature");
formatter.feature({
  "name": "enqiry Manager",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "A user want to Create new enqiry and edit",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "loginFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
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
  "status": "passed"
});
formatter.step({
  "name": "User click the \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"sidebar_enqiry\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"new_enqiry_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in Question",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_in_Question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"main\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"sidebar_enqiry\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"enqiry_detail\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"edit_your_inqiry_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in edited question",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_in_edited_question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"submit_edit_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.ElementNotInteractableException: element not interactable\n  (Session info: chrome\u003d77.0.3865.120)\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-RG37MRS\u0027, ip: \u0027192.168.20.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027x86\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.120, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\kevin\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55637}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 64a631ae23a7f81942297baba84847a8\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.execute(RemoteWebElement.java:285)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.click(RemoteWebElement.java:84)\r\n\tat asd.test.loginFeature.user_click_on(loginFeature.java:47)\r\n\tat ✽.User click the \"submit_edit_\"(file:OpalFeatures/enqiryFeature.feature:21)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click the \"sidebar_main\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "page should be navigated to \"Card Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "A user want to Answer Question and then delete it",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "loginFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as an admin",
  "keyword": "Given "
});
formatter.match({
  "location": "loginFeature.user_is_login_as_an_admin()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"enqiry_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"answer_enqiry_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in answer",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_in_answer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"submit_answer_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.ElementNotInteractableException: element not interactable\n  (Session info: chrome\u003d77.0.3865.120)\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-RG37MRS\u0027, ip: \u0027192.168.20.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027x86\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.120, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\kevin\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55659}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 46087ccf175acccea27591b308a0fbbb\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.execute(RemoteWebElement.java:285)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.click(RemoteWebElement.java:84)\r\n\tat asd.test.loginFeature.user_click_on(loginFeature.java:47)\r\n\tat ✽.User click the \"submit_answer_\"(file:OpalFeatures/enqiryFeature.feature:34)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click the \"enqiry_management\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click the \"remove_enqiry_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "page should be navigated to \"Enqiry List\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
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
  "name": "the User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "loginFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
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
  "status": "passed"
});
formatter.step({
  "name": "User click the \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"navbar_logout\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#navbar_logout\"}\n  (Session info: chrome\u003d77.0.3865.120)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-RG37MRS\u0027, ip: \u0027192.168.20.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027x86\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.120, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\kevin\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55681}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 0e9caf37a2a0d8a4c961fe05e5b66718\n*** Element info: {Using\u003did, value\u003dnavbar_logout}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.loginFeature.user_click_on(loginFeature.java:47)\r\n\tat ✽.User click the \"navbar_logout\"(file:OpalFeatures/loginFeature.feature:10)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "page should be navigated to \"logout.jsp\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
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
  "name": "the User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "loginFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill user admin information",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_fill_admin_user_information()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"sidebar_AccessManager\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"css selector\",\"selector\":\"#sidebar_AccessManager\"}\n  (Session info: chrome\u003d77.0.3865.120)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-RG37MRS\u0027, ip: \u0027192.168.20.2\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027x86\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_201\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 77.0.3865.120, chrome: {chromedriverVersion: 76.0.3809.126 (d80a294506b4..., userDataDir: C:\\Users\\kevin\\AppData\\Loca...}, goog:chromeOptions: {debuggerAddress: localhost:55707}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: XP, platformName: XP, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 7bc1e50d48861f94c3029dbd8a3cf877\n*** Element info: {Using\u003did, value\u003dsidebar_AccessManager}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat asd.test.loginFeature.user_click_on(loginFeature.java:47)\r\n\tat ✽.User click the \"sidebar_AccessManager\"(file:OpalFeatures/loginFeature.feature:20)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User click the \"delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
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
  "name": "page should be navigated to \"Access manager\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
});