<<<<<<< HEAD
$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/loginFeature.feature");
formatter.feature({
  "name": "Login and Logout",
  "description": "",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "A user will be able to login , and logout",
=======
$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:opalFeatures/TopUpManagementFeature.feature");
formatter.feature({
  "name": "TopUpManagementFeature",
  "description": "    As a user of Opal project \n    I want to create/delete/update payment method\n    So that I can top up my card with my payment method",
  "keyword": "Feature"
});
formatter.scenario({
  "name": "Successfully create/update/delete preffered payment method",
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TopUpManagementFeature.user_is_in_the(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in user detail",
  "keyword": "When "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_user_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"sidebar_paymentMethodManagement\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"paymentMethodManagement_addMethod\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in paymentmethod detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_paymentmethod_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"addPaymentMethod_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"addPaymentMethodOutcome_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"9876987698769876\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User fill in update detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_update_detail()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_update\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_back\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"7654765476547654\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_delete\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"updatePaymentmethod_back\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Successfully create top up card",
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
  "description": "",
  "keyword": "Scenario"
});
formatter.step({
  "name": "User is in the \"login.jsp\"",
  "keyword": "Given "
});
<<<<<<< HEAD
formatter.match({});
=======
formatter.match({
  "location": "TopUpManagementFeature.user_is_in_the(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User Click on \"register\"",
  "keyword": "When "
});
formatter.match({});
=======
  "name": "User fill in user detail",
  "keyword": "When "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_user_detail()"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User register as user",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User click \"login_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"register\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User click \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User click \"sidebar_topUpValue\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"continue\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User fill in payment amount",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_payment_amount()"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"logout\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User click \"topUpValue_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"main page\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User fill in the payment detail",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_fill_in_the_payment_detail()"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"login\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User click \"topUpCard_submit\"",
  "keyword": "And "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User fill user information",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User click \"topUpConfirmation_confirm\"",
  "keyword": "Then "
});
formatter.match({
  "location": "TopUpManagementFeature.user_click_loginsuccess(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.uri("file:opalFeatures/UserRegistrationFeature.feature");
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
<<<<<<< HEAD
  "name": "User click \"here to continue\"",
  "keyword": "And "
});
formatter.match({});
=======
  "name": "User is in the \"main.jsp\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TopUpManagementFeature.user_is_in_the(String)"
});
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "User click \"\u003clogout\u003e\"",
  "keyword": "And "
=======
  "name": "User Click on \"navbar_register\"",
  "keyword": "When "
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
<<<<<<< HEAD
  "name": "The page should be navigated to \"\u003clogout action\u003e\"",
  "keyword": "Then "
=======
  "name": "User fill in contact detail",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User clicks \"back\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user fill in login details",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user choose \"loginAction_success\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User Clicks on \"navbar_profile\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User edits \"edit_profile\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "User update details",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user click to \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user click change password \"change_password\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user update password",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user is back to profile \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user choose add security question \"add_question\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user choose from a list of question",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user goes back to profile \"back_to_profile\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user chooses \"forget_button\"",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user enter email address",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "user input answer",
  "keyword": "And "
>>>>>>> 67e71ea192e812e83e57846e2a80a56d9c8d8df9
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
});