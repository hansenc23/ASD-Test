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
formatter.uri("file:OpalFeatures/FAQsFeature.feature");
formatter.feature({
  "name": "FAQs Feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully create, edit, delete a FAQ",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "FAQsFeature.user_is_in(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as admin",
  "keyword": "Given "
});
formatter.match({
  "location": "FAQsFeature.user_is_login_as_an_admin()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"FAQs_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"question\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the question",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_fill_in_the_question()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"answer\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the answer",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_fill_in_the_answer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"faqcreate_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on the edit button",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on_the_edit_button()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"updateQuestion\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the updateQuestion",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_fill_in_the_updateQuestion()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"updateAnswer\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in the updateAnswer",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_fill_in_the_updateAnswer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"edit_update\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"edit_delete_after\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"delete_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Create FAQs\"",
  "keyword": "Then "
});
formatter.match({
  "location": "FAQsFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully view the FAQ",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "FAQsFeature.user_is_in(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"sidebar_FAQ\"",
  "keyword": "When "
});
formatter.match({
  "location": "FAQsFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"View FAQs\"",
  "keyword": "Then "
});
formatter.match({
  "location": "FAQsFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.uri("file:OpalFeatures/TransferBalanceFeature.feature");
formatter.feature({
  "name": "Transfer Balance Management",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully transfer balance",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is already logs in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_is_already_logs_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks the \"sidebar_transferBalance\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"fromOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"toOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferContinue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"transferValue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferNext\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User see that the details are correct",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_see_that_the_details_are_correct()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"confirmTransfer\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User should see transfer success message",
  "keyword": "Then "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_should_see_transfer_success_message()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully edit transfer balance before confirmation",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is already logs in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_is_already_logs_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks the \"sidebar_transferBalance\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"fromOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"toOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferContinue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"transferValue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferNext\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User see that the details are correct",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_see_that_the_details_are_correct()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"editTransfer\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User edit the transfer balance details",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_edit_the_transfer_balance_details()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"submitEdit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"confirmTransfer\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User should see transfer success message",
  "keyword": "Then "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_should_see_transfer_success_message()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully cancel transfer balance",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is already logs in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_is_already_logs_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks the \"sidebar_transferBalance\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"fromOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"toOpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferContinue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"transferValue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User submit it by clicks on \"transferNext\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_submit_it_by_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User see that the details are correct",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_see_that_the_details_are_correct()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"cancelTransfer\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User should see cancelled transfer message",
  "keyword": "Then "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_should_see_cancelled_transfer_message()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully list transfer balance history",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is already logs in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_is_already_logs_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks the \"sidebar_transferBalance\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"showTransferHistory\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User should see the list of transfer balance history",
  "keyword": "Then "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_should_see_the_list_of_transfer_balance_history()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully search transfer balance history by date",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is already logs in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_is_already_logs_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks the \"sidebar_transferBalance\"",
  "keyword": "When "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"showTransferHistory\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User choose the \"enterDate\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_choose_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User clicks on \"searchTransID\"",
  "keyword": "And "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_clicks_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the User should see record on the searched date",
  "keyword": "Then "
});
formatter.match({
  "location": "TransferBalanceFeature.the_User_should_see_record_on_the_searched_date()"
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
formatter.uri("file:OpalFeatures/enqiryFeature.feature");
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
  "status": "passed"
});
formatter.step({
  "name": "User click the \"sidebar_main\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "page should be navigated to \"Card Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
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
  "status": "passed"
});
formatter.step({
  "name": "User click the \"enqiry_management\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click the \"remove_enqiry_\"",
  "keyword": "And "
});
formatter.match({
  "location": "loginFeature.user_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "page should be navigated to \"Enqiry List\"",
  "keyword": "Then "
});
formatter.match({
  "location": "loginFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
});