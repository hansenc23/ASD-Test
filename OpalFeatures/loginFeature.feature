#----------------------------------
# Empty Cucumber .feature file
#----------------------------------
   Feature: Login and Logout

Scenario: A user will be able to login , and logout
Given User is in the "main.jsp"
    When User Click on "register"
    And User register as user 
    And User Click on "register_submit"
    And User Click on "next_page"
    And User Click on "logout"
    And User Click on "main page"
    And User Click on "login"
    And User fill user information
    And User Click on "here to continue"
    And User Click on "logout"
    Then The page should be navigated to "logout.jsp"

   
