#----------------------------------
# Empty Cucumber .feature file
#----------------------------------
 Feature: Online User Registration
   
   
   Scenario: Successfully created a customer account
      Given User is in "main.jsp"
      When User click on "register"
      Then the page should be navigated to "register.jsp"
      And User fill in registration details
      And user click "register"
      Then The page should be navigated to "welcome.jsp"



   Scenario: Successfully update account details
      Given User is in "login.jsp"
      Given User is logged in
      And User click on "Welcome User"
      Then the page should be navigated to "accountProfile.jsp"
      And User click on "edit"
      And User update necessary details
      And user click on update
      Then User should see "Update was successful"
      And user click on back
      Then the page should be navigated to "accountProfile.jsp"


   
