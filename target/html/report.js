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
  "error_message": "junit.framework.AssertionFailedError\r\n\tat junit.framework.Assert.fail(Assert.java:55)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:22)\r\n\tat junit.framework.Assert.assertTrue(Assert.java:31)\r\n\tat asd.test.OrderFeature.the_page_should_be_navigated_to(OrderFeature.java:103)\r\n\tat ✽.The page should be navigated to \"Order Cancelled\"(file:opalFeatures/OrderFeature.feature:31)\r\n",
  "status": "failed"
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
  "error_message": "cucumber.runtime.CucumberException: Failed to instantiate class asd.test.StaffCardFeature\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.cacheNewInstance(DefaultJavaObjectFactory.java:47)\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.getInstance(DefaultJavaObjectFactory.java:33)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:57)\r\n\tat cucumber.runner.PickleStepDefinitionMatch.runStep(PickleStepDefinitionMatch.java:50)\r\n\tat cucumber.runner.TestStep.executeStep(TestStep.java:65)\r\n\tat cucumber.runner.TestStep.run(TestStep.java:50)\r\n\tat cucumber.runner.PickleStepTestStep.run(PickleStepTestStep.java:43)\r\n\tat cucumber.runner.TestCase.run(TestCase.java:46)\r\n\tat cucumber.runner.Runner.runPickle(Runner.java:49)\r\n\tat cucumber.runtime.junit.PickleRunners$NoStepDescriptions.run(PickleRunners.java:146)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:68)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:23)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:73)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:123)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:65)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat cucumber.api.junit.Cucumber$RunCucumber.evaluate(Cucumber.java:147)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat org.apache.maven.surefire.junit4.JUnit4TestSet.execute(JUnit4TestSet.java:53)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.executeTestSet(JUnit4Provider.java:123)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.invoke(JUnit4Provider.java:104)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat org.apache.maven.surefire.util.ReflectionUtils.invokeMethodWithArray(ReflectionUtils.java:164)\r\n\tat org.apache.maven.surefire.booter.ProviderFactory$ProviderProxy.invoke(ProviderFactory.java:110)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.invokeProvider(SurefireStarter.java:175)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.runSuitesInProcessWhenForked(SurefireStarter.java:107)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:68)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.cacheNewInstance(DefaultJavaObjectFactory.java:41)\r\n\t... 39 more\r\nCaused by: org.openqa.selenium.SessionNotCreatedException: session not created\nfrom chrome not reachable\n  (Session info: chrome\u003d76.0.3809.132)\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u0027172.19.162.223\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: driver.version: Driver\nremote stacktrace: Backtrace:\n\tOrdinal0 [0x00A77C53+1473619]\n\tOrdinal0 [0x009FAD71+961905]\n\tOrdinal0 [0x0098415C+475484]\n\tOrdinal0 [0x0097DAEA+449258]\n\tOrdinal0 [0x0097E188+450952]\n\tOrdinal0 [0x0097F295+455317]\n\tOrdinal0 [0x0097B495+439445]\n\tOrdinal0 [0x00984F10+478992]\n\tOrdinal0 [0x009398FE+170238]\n\tOrdinal0 [0x00938D1D+167197]\n\tOrdinal0 [0x0093742B+160811]\n\tOrdinal0 [0x00920AE6+68326]\n\tOrdinal0 [0x00921BF0+72688]\n\tOrdinal0 [0x00921B89+72585]\n\tOrdinal0 [0x00A14B37+1067831]\n\tGetHandleVerifier [0x00B16845+506677]\n\tGetHandleVerifier [0x00B165E0+506064]\n\tGetHandleVerifier [0x00B1D188+533624]\n\tGetHandleVerifier [0x00B1701A+508682]\n\tOrdinal0 [0x00A0C226+1032742]\n\tOrdinal0 [0x00A0C09F+1032351]\n\tOrdinal0 [0x00A16A4B+1075787]\n\tOrdinal0 [0x00A16BB3+1076147]\n\tOrdinal0 [0x00A15B65+1071973]\n\tBaseThreadInitThunk [0x75C06359+25]\n\tRtlGetAppContainerNamedObjectPath [0x773D7A94+228]\n\tRtlGetAppContainerNamedObjectPath [0x773D7A64+180]\n\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.W3CHandshakeResponse.lambda$errorHandler$0(W3CHandshakeResponse.java:62)\r\n\tat org.openqa.selenium.remote.HandshakeResponse.lambda$getResponseFunction$0(HandshakeResponse.java:30)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.lambda$createSession$0(ProtocolHandshake.java:126)\r\n\tat java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:193)\r\n\tat java.util.Spliterators$ArraySpliterator.tryAdvance(Spliterators.java:958)\r\n\tat java.util.stream.ReferencePipeline.forEachWithCancel(ReferencePipeline.java:126)\r\n\tat java.util.stream.AbstractPipeline.copyIntoWithCancel(AbstractPipeline.java:498)\r\n\tat java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:485)\r\n\tat java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)\r\n\tat java.util.stream.FindOps$FindOp.evaluateSequential(FindOps.java:152)\r\n\tat java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)\r\n\tat java.util.stream.ReferencePipeline.findFirst(ReferencePipeline.java:464)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:128)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:74)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:136)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:213)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.\u003cinit\u003e(RemoteWebDriver.java:131)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:181)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:168)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:123)\r\n\tat asd.test.Driver.getDriver(Driver.java:22)\r\n\tat asd.test.StaffCardFeature.\u003cinit\u003e(StaffCardFeature.java:26)\r\n\t... 44 more\r\n",
  "status": "failed"
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
  "error_message": "cucumber.runtime.CucumberException: Failed to instantiate class asd.test.UserCardFeature\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.cacheNewInstance(DefaultJavaObjectFactory.java:47)\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.getInstance(DefaultJavaObjectFactory.java:33)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:57)\r\n\tat cucumber.runner.PickleStepDefinitionMatch.runStep(PickleStepDefinitionMatch.java:50)\r\n\tat cucumber.runner.TestStep.executeStep(TestStep.java:65)\r\n\tat cucumber.runner.TestStep.run(TestStep.java:50)\r\n\tat cucumber.runner.PickleStepTestStep.run(PickleStepTestStep.java:43)\r\n\tat cucumber.runner.TestCase.run(TestCase.java:46)\r\n\tat cucumber.runner.Runner.runPickle(Runner.java:49)\r\n\tat cucumber.runtime.junit.PickleRunners$NoStepDescriptions.run(PickleRunners.java:146)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:68)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:23)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:73)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:123)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:65)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\r\n\tat cucumber.api.junit.Cucumber$RunCucumber.evaluate(Cucumber.java:147)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\r\n\tat org.apache.maven.surefire.junit4.JUnit4TestSet.execute(JUnit4TestSet.java:53)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.executeTestSet(JUnit4Provider.java:123)\r\n\tat org.apache.maven.surefire.junit4.JUnit4Provider.invoke(JUnit4Provider.java:104)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat org.apache.maven.surefire.util.ReflectionUtils.invokeMethodWithArray(ReflectionUtils.java:164)\r\n\tat org.apache.maven.surefire.booter.ProviderFactory$ProviderProxy.invoke(ProviderFactory.java:110)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.invokeProvider(SurefireStarter.java:175)\r\n\tat org.apache.maven.surefire.booter.SurefireStarter.runSuitesInProcessWhenForked(SurefireStarter.java:107)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:68)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat cucumber.runtime.java.DefaultJavaObjectFactory.cacheNewInstance(DefaultJavaObjectFactory.java:41)\r\n\t... 39 more\r\nCaused by: org.openqa.selenium.SessionNotCreatedException: session not created\nfrom chrome not reachable\n  (Session info: chrome\u003d76.0.3809.132)\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-P3652T2\u0027, ip: \u0027172.19.162.223\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_212\u0027\nDriver info: driver.version: Driver\nremote stacktrace: Backtrace:\n\tOrdinal0 [0x00A77C53+1473619]\n\tOrdinal0 [0x009FAD71+961905]\n\tOrdinal0 [0x0098415C+475484]\n\tOrdinal0 [0x0097DAEA+449258]\n\tOrdinal0 [0x0097E188+450952]\n\tOrdinal0 [0x0097F295+455317]\n\tOrdinal0 [0x0097B495+439445]\n\tOrdinal0 [0x00984F10+478992]\n\tOrdinal0 [0x009398FE+170238]\n\tOrdinal0 [0x00938D1D+167197]\n\tOrdinal0 [0x0093742B+160811]\n\tOrdinal0 [0x00920AE6+68326]\n\tOrdinal0 [0x00921BF0+72688]\n\tOrdinal0 [0x00921B89+72585]\n\tOrdinal0 [0x00A14B37+1067831]\n\tGetHandleVerifier [0x00B16845+506677]\n\tGetHandleVerifier [0x00B165E0+506064]\n\tGetHandleVerifier [0x00B1D188+533624]\n\tGetHandleVerifier [0x00B1701A+508682]\n\tOrdinal0 [0x00A0C226+1032742]\n\tOrdinal0 [0x00A0C09F+1032351]\n\tOrdinal0 [0x00A16A4B+1075787]\n\tOrdinal0 [0x00A16BB3+1076147]\n\tOrdinal0 [0x00A15B65+1071973]\n\tBaseThreadInitThunk [0x75C06359+25]\n\tRtlGetAppContainerNamedObjectPath [0x773D7A94+228]\n\tRtlGetAppContainerNamedObjectPath [0x773D7A64+180]\n\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.W3CHandshakeResponse.lambda$errorHandler$0(W3CHandshakeResponse.java:62)\r\n\tat org.openqa.selenium.remote.HandshakeResponse.lambda$getResponseFunction$0(HandshakeResponse.java:30)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.lambda$createSession$0(ProtocolHandshake.java:126)\r\n\tat java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:193)\r\n\tat java.util.Spliterators$ArraySpliterator.tryAdvance(Spliterators.java:958)\r\n\tat java.util.stream.ReferencePipeline.forEachWithCancel(ReferencePipeline.java:126)\r\n\tat java.util.stream.AbstractPipeline.copyIntoWithCancel(AbstractPipeline.java:498)\r\n\tat java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:485)\r\n\tat java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)\r\n\tat java.util.stream.FindOps$FindOp.evaluateSequential(FindOps.java:152)\r\n\tat java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)\r\n\tat java.util.stream.ReferencePipeline.findFirst(ReferencePipeline.java:464)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:128)\r\n\tat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:74)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:136)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:213)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.\u003cinit\u003e(RemoteWebDriver.java:131)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:181)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:168)\r\n\tat org.openqa.selenium.chrome.ChromeDriver.\u003cinit\u003e(ChromeDriver.java:123)\r\n\tat asd.test.Driver.getDriver(Driver.java:22)\r\n\tat asd.test.UserCardFeature.\u003cinit\u003e(UserCardFeature.java:26)\r\n\t... 44 more\r\n",
  "status": "failed"
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