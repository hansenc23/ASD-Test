#----------------------------------
# Empty Cucumber .feature file
#----------------------------------
    
Feature: Account Management
   
   
   Scenario: Successfully view account details
      Given the page is "adminPage.jsp"
      When the user chooses "account_management"
      And the user views "view_profile"
      Then the user should be directed to a page called "Profile" 


   Scenario: Successfully edit account details
      Given user is on the page called "adminPage.jsp"
      When the user clicks on a button "account_management"
      And the user wants to edit account details "edit_profile"
      And the user fill in new details 
      And the user goes back to account list "back_to_profile"
      Then the page title should be "Account List" 
# 
# Scenario: Successfully delete an account
#       Given USER is at the page called "adminPage.jsp"
#       When USER views account list "account_management"
#       And the User wants to delete an account "delete_profile"
#       And the user confirms to delete account "delete_button" 
#       And the user chooses to go back to account list "back_to_profile"
#       Then USER should be directed to page "Account List"