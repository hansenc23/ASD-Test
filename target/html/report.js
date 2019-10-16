$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/AccountManagementFeature.feature");
formatter.feature({
  "name": "Account Management",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully view account details",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the page is \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "AccountManagementFeature.the_page_is(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user chooses \"account_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_chooses(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user views \"view_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_views(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user should be directed to a page called \"Profile\"",
  "keyword": "Then "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_should_be_directed_to_a_page_called(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully edit account details",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "user is on the page called \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "AccountManagementFeature.user_is_on_the_page_called(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user clicks on a button \"account_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_clicks_on_a_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user wants to edit account details \"edit_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_wants_to_edit_account_details(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user fill in new details",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_fill_in_new_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user goes back to account list \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_goes_back_to_account_list(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page title should be \"Account List\"",
  "keyword": "Then "
});
formatter.match({
  "location": "AccountManagementFeature.the_page_title_should_be(String)"
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
  "status": "passed"
});
});