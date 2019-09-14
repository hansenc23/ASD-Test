$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/loginFeature.feature");
formatter.feature({
  "name": "Access Manager",
  "description": "",
  "keyword": "Feature"
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
  "location": "loginFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"navbar_login\"",
  "keyword": "When "
});
formatter.match({
  "location": "loginFeature.user_Click_on(String)"
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
  "name": "User Click on \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click \"sidebar_accessManager\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_Click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_Click_on(String)"
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
  "name": "The page should be navigated to \"Access manager\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
});