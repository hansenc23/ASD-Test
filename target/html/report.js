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
  "status": "passed"
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