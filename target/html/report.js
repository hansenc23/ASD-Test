$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/OrderFeature.feature");
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
      "name": "@revomeUser"
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
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully order an Opal Card as a customer",
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
});