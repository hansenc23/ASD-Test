#----------------------------------
# Empty Cucumber .feature file
#----------------------------------
   Feature: Access Manager

# Scenario: A user will be able to login , and logout
# Given User is in the "main.jsp"
#     When User Click on "navbar_login"
#     And User fill user information
#     And User Click on "login_submit"
#     And User Click on "loginAction_success"
#     And User Click "navbar_logout"
#     Then The page should be navigated to "logout.jsp"

   
Scenario: A user want to delete their access history 
Given User is in the "main.jsp"
    When User Click on "navbar_login"
    And User fill user information
    And User Click on "login_submit"
    And User Click on "loginAction_success"
    And User Click "sidebar_accessManager"
    And User Click on "delete"
    And User refresh page
    Then The page should be navigated to "Access manager"