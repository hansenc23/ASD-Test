$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/UserRegistrationFeature.feature");
formatter.feature({
  "name": "Online User Registration",
  "description": "",
  "keyword": "Feature"
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
});