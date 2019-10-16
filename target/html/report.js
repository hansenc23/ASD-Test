$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:OpalFeatures/CardManagementFeature.feature");
formatter.feature({
  "name": "Card Management Feature",
  "description": "",
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
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks \"sidebar_linkCard\" button",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_clicks(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"\u003cOpalID\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"\u003csecurityCode\u003e\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User submit the form by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should give a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_give_a_green_success_feedback()"
});
formatter.result({
  "status": "passed"
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
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.step({
  "name": "User clicks \"sidebar_linkCard\" button",
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
  "name": "User submit the form by clicking \"link\"",
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
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks \"sidebar_linkCard\" button",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_clicks(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"OpalID\" with \"0000 0000 0000 0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in \"securityCode\" with \"0000\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_fill_in_with(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User submit the form by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should give a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_give_a_red_fail_feedback()"
});
formatter.result({
  "status": "passed"
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
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks \"sidebar_unlinkCard\" button",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_clicks(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"unlink\" for \"opalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User should not see \"opalID\" in the \"Unlink Card Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.user_should_not_see_in_the(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully search an Opal Card by Opal ID",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the User is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User select an \"OpalID\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_select_an(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User submit the form by clicking \"Search\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.user_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the searched \"OpalID\" should be shown in the page",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_searched_should_be_shown_in_the_page(String)"
});
formatter.result({
  "status": "passed"
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
  "location": "CardManagementFeature.the_User_is_logged_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "is now in the \"main.jsp\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click on \"Details\" for \"opalID\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.user_click_on_for(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should be navigated to \"Card Details Page\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_be_navigated_to(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully register an Opal Card",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@register_card"
    }
  ]
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"OpalID\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should shows a green success feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_shows_a_green_success_feedback()"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenarioOutline({
  "name": "Failed register an Opal Card",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"\u003cExistedOpalID\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.step({
  "name": "the page should shows a red fail feedback",
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
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"register_card\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff fill in the new Opal Card details for \"8888 8888 8888 8888\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_fill_in_the_new_Opal_Card_details_for(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff submit by clicking \"link\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_submit_by_clicking(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should shows a red fail feedback",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_shows_a_red_fail_feedback()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully list all Opal cards",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "the Staff is logged in to the website",
  "keyword": "Given "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_is_loggied_in_to_the_website()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"card_management\"",
  "keyword": "When "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the Staff click on \"show_all_cards\"",
  "keyword": "And "
});
formatter.match({
  "location": "CardManagementFeature.the_Staff_click_on(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the page should show all Opal cards",
  "keyword": "Then "
});
formatter.match({
  "location": "CardManagementFeature.the_page_should_show_all_Opal_cards()"
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
});