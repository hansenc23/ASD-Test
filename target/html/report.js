$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/loginFeature.feature");
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
  "status": "passed"
});
formatter.step({
  "name": "page should be navigated to \"logout.jsp\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
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
  "name": "User click the \"sidebar_accessManager\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User refresh page",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_refresh_page()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "page should be navigated to \"Access manager\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
});