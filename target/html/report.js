$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/UserRegistrationFeature.feature");
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
  "name": "User is at \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.User_is_at(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User taps \"navbar_register\"",
  "keyword": "When "
});
formatter.match({
  "location": "RegisterFeature.user_taps(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the registration detail",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_fill_in_the_registration_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User backs \"back\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_backs(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user should be directed to \"Card Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.user_should_be_directed_to(String)"
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
  "name": "page is on \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.page_is_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user fills login credentials",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_fills_login_credentials()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user login success \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user open profile \"navbar_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_open_profile(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user click edit \"edit_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_click_edit(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User updates account details",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_updates_account_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user goes back \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_goes_back(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user wants to change password \"change_password\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_wants_to_change_password(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in new password",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_fill_in_new_password()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user tap back \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_tap_back(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user wants to add question \"add_question\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_wants_to_add_question(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user select the necessary question",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_select_the_necessary_question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User go previous page \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_go_previous_page(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User should see profile page \"Profile\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.User_should_see_profile_page(String)"
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
  "name": "the page shows \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "RegisterFeature.the_page_shows(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user forgets \"forget_button\"",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_forgets(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User types email",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.User_types_email()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "user answer the question",
  "keyword": "And "
});
formatter.match({
  "location": "RegisterFeature.user_answer_the_question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "page will show old password \"Forget Password\"",
  "keyword": "Then "
});
formatter.match({
  "location": "RegisterFeature.page_will_show_old_password(String)"
});
formatter.result({
  "error_message": "junit.framework.AssertionFailedError\r\n\tat junit.framework.Assert.fail(Assert.java:55)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:22)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:31)\r\n\tat asd.test.RegisterFeature.page_will_show_old_password(RegisterFeature.java:205)\r\n\tat ✽.page will show old password \"Forget Password\"(file:OpalFeatures/UserRegistrationFeature.feature:33)\r\n",
  "status": "failed"
});
});