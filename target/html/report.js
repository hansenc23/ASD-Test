$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/LinkCardFeature.feature");
formatter.feature({
  "name": "Link Card Feature",
  "description": "  As a customer\n  I want to link my Opal card to my account\n  In order to manage my Opal card",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully link Opal card to account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "UserCardFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.UserCardFeature.the_User_is_logged_in_to_the_website(UserCardFeature.java:36)\r\n\tat ✽.the User is logged in to the website(file:opalFeatures/LinkCardFeature.feature:8)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.is_in_the(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "UserCardFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cOpalID\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003csecurityCode\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"linkCard_link\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should give a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.the_page_should_give_a_green_success_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.scenarioOutline({
  "name": "Failed linking Opal card with wrong Opal details",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.step({
  "name": "User click on \"linkCard\"",
  "keyword": "When "
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cFailOpalID\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003cFailSecurityCode\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "User click \"linkCard_link\"",
  "keyword": "And "
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "FailOpalID",
        "FailSecurityCode"
      ]
    },
    {
      "cells": [
        "0000 0000 0000 0000",
        "0000"
      ]
    }
  ]
});
formatter.scenario({
  "name": "Failed linking Opal card with wrong Opal details",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "UserCardFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.UserCardFeature.the_User_is_logged_in_to_the_website(UserCardFeature.java:36)\r\n\tat ✽.the User is logged in to the website(file:opalFeatures/LinkCardFeature.feature:17)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.is_in_the(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"linkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "UserCardFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"0000 0000 0000 0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click \"linkCard_link\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.the_page_should_give_a_red_fail_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/ListAllCardsFeature.feature");
formatter.feature({
  "name": "List all Opal cards",
  "description": "    As a staff\n    I want to list all Opal cards\n    In order to see the Opal cards from the database",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully list all Opal cards",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the Staff is in the \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_is_in_the(String)"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.StaffCardFeature.the_Staff_is_in_the(StaffCardFeature.java:32)\r\n\tat ✽.the Staff is in the \"adminPage.jsp\"(file:opalFeatures/ListAllCardsFeature.feature:7)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "the Staff click on \"cardManagement\"",
  "keyword": "When "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"showCards\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should show all Opal cards",
  "keyword": "Then "
});
formatter.match({
  "location": "StaffCardFeature.the_page_should_show_all_Opal_cards()"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/ListCardFeature.feature");
formatter.feature({
  "name": "List Linked Opal Cards",
  "description": "As a customer\n  I want to link my Opal card to my account\n  In order to manage my Opal card",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully list linked Opal Cards",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "UserCardFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.UserCardFeature.the_User_is_logged_in_to_the_website(UserCardFeature.java:36)\r\n\tat ✽.the User is logged in to the website(file:opalFeatures/ListCardFeature.feature:9)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.is_in_the(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"home\"",
  "keyword": "When "
});
formatter.match({
  "location": "UserCardFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User should see list of their Opal cards",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.user_should_see_list_of_their_Opal_cards()"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/OrderFeature.feature");
formatter.feature({
  "name": "Order Opal Card Feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully order an Opal Card and edit an order as an anonymous user",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@removeAnonymousUser"
    }
  ]
});
formatter.step({
  "name": "User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"type_adult\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in contact detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_contact_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"contact_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select the top up value",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_select_the_top_up_value()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_payment_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_edit\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in edit detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_edit_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"edit_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_confirm\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Succeed\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully order an Opal Card as a customer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@removeOrder"
    }
  ]
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as a customer",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_a_customer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_opal_card\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"type_child\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select the top up value",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_select_the_top_up_value()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"order_value_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_fill_in_payment_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentDetail_continue\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"orderConfirmation_cancelled\"",
  "keyword": "And "
});
formatter.match({
  "location": "OrderFeature.user_click(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Cancelled\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully view the order history",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User is login as a customer",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_a_customer()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_history\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order History\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully view all the order",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is login as an admin",
  "keyword": "Given "
});
formatter.match({
  "location": "OrderFeature.user_is_login_as_an_admin()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User Click on \"order_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "OrderFeature.user_Click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The page should be navigated to \"Order Management\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OrderFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.uri("file:opalFeatures/RegisterCardFeature.feature");
formatter.feature({
  "name": "Register an Opal Card",
  "description": "    As a staff\n    I want to register an Opal Card to the database\n    So that the customer can link the Opal card",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully register an Opal Card",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the Staff is in the \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_is_in_the(String)"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.StaffCardFeature.the_Staff_is_in_the(StaffCardFeature.java:32)\r\n\tat ✽.the Staff is in the \"adminPage.jsp\"(file:opalFeatures/RegisterCardFeature.feature:8)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "the Staff click on \"cardManagement\"",
  "keyword": "When "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"registerCard\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"OpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"registerCard_register\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should give a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.the_page_should_give_a_green_success_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.scenarioOutline({
  "name": "Failed register an Opal Card",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the Staff is in the \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.step({
  "name": "the Staff click on \"cardManagement\"",
  "keyword": "When "
});
formatter.step({
  "name": "the Staff click on \"registerCard\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"\u003cExistedOpalID\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff click on \"registerCard_register\"",
  "keyword": "And "
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "ExistedOpalID"
      ]
    },
    {
      "cells": [
        "8888 8888 8888 8888"
      ]
    }
  ]
});
formatter.scenario({
  "name": "Failed register an Opal Card",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the Staff is in the \"adminPage.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_is_in_the(String)"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.StaffCardFeature.the_Staff_is_in_the(StaffCardFeature.java:32)\r\n\tat ✽.the Staff is in the \"adminPage.jsp\"(file:opalFeatures/RegisterCardFeature.feature:16)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "the Staff click on \"cardManagement\"",
  "keyword": "When "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"registerCard\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"8888 8888 8888 8888\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the Staff click on \"registerCard_register\"",
  "keyword": "And "
});
formatter.match({
  "location": "StaffCardFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.the_page_should_give_a_red_fail_feedback()"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/UnlinkCardFeature.feature");
formatter.feature({
  "name": "Unlink Opal Card",
  "description": "   As a customer\n   I want to unlink my Opal card to my account\n   In order to remove it from my Opal card list",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully unlink Opal card from account",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "UserCardFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.UserCardFeature.the_User_is_logged_in_to_the_website(UserCardFeature.java:36)\r\n\tat ✽.the User is logged in to the website(file:opalFeatures/UnlinkCardFeature.feature:7)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.is_in_the(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"unlinkCard\"",
  "keyword": "When "
});
formatter.match({
  "location": "UserCardFeature.user_click_on(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"unlink\" for \"opalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User should not see \"opalID\" in the \"unlink.jsp\"",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.user_should_not_see_in_the(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.uri("file:opalFeatures/ViewCardDetails.feature");
formatter.feature({
  "name": "View Details of an Opal Card",
  "description": "    As a customer\n    I want to view the details of an Opal Card\n    In order to see the remaining balance",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully view the details of the Opal card",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "UserCardFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "error_message": "cucumber.api.PendingException: TODO: implement me\r\n\tat asd.test.UserCardFeature.the_User_is_logged_in_to_the_website(UserCardFeature.java:36)\r\n\tat ✽.the User is logged in to the website(file:opalFeatures/ViewCardDetails.feature:7)\r\n",
  "status": "pending"
});
formatter.step({
  "name": "is in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "UserCardFeature.is_in_the(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User click on \"viewDetails\" for \"opalID\"",
  "keyword": "When "
});
formatter.match({
  "location": "UserCardFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "the page should be navigated to \"Card Details\"",
  "keyword": "Then "
});
formatter.match({
  "location": "UserCardFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "skipped"
});
});