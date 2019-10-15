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
formatter.scenario({
  "name": "Successfully delete an account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "USER is at the page called \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "AccountManagementFeature.USER_is_at_the_page_called(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "USER views account list \"account_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "AccountManagementFeature.USER_views_account_list(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User wants to delete an account \"delete_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_User_wants_to_delete_an_account(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user confirms to delete account \"delete_button\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_confirms_to_delete_account(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user chooses to go back to account list \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({
  "location": "AccountManagementFeature.the_user_chooses_to_go_back_to_account_list(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "USER should be directed to page \"Account List\"",
  "keyword": "Then "
});
formatter.match({
  "location": "AccountManagementFeature.USER_should_be_directed_to_page(String)"
});
formatter.result({
  "status": "passed"
});
formatter.uri("file:OpalFeatures/TransportNewsManagement.feature");
formatter.feature({
  "name": "Transport News Management",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfuly create, edit, delete an Article",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is staying at \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_is_staying_at(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User has been identified as an admin",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_has_been_identified_as_an_admin()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"News_management\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User entered all article details",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_entered_all_article_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"createArticle_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"Cucumber Test\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User entered all update details",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_entered_all_update_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"updateArticle_update\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"articleUpdate_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the updated button \"Cucumber Test updated\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_updated_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"updateArticle_delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"articleUpdate_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The User should be navigated to \"Create Article\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TransportNewsManagementFeature.the_User_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Customer successfully view the Article",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is staying at \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_is_staying_at(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User smash on the button \"sidebar_articleView\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransportNewsManagementFeature.user_smash_on_the_button(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The User should be navigated to \"View Article\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TransportNewsManagementFeature.the_User_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
});