# #----------------------------------
# # Empty Cucumber .feature file
# #----------------------------------
#Use the login Feature file in asdTest
      Feature: enqiry Manager
       Scenario: A user want to Create new enqiry and edit
        Given the User is in the "main.jsp"
        When User click the "navbar_login"
        And User fill user information
        And User click the "login_submit"
        And User click the "loginAction_success"
        And User click the "sidebar_enqiry"
        And User click the "new_enqiry_"
        And User fill in Question
        And User click the "submit"
        And User click the "main"
        And User click the "sidebar_enqiry"
        And User click the "enqiry_detail"
        And User click the "edit_your_inqiry_"
        And User fill in edited question
        And User click the "submit_edit_"
        And User click the "sidebar_main"
  Then page should be navigated to "Card Page"
  
  
  
  
  Scenario: A user want to Answer Question and then delete it
        Given the User is in the "login.jsp"
        Given User is login as an admin
        When User click the "enqiry_management"
        And User click the "answer_enqiry_"
        And User fill in answer
        And User click the "submit_answer_"
         
        And User click the "enqiry_management"
        And User click the "remove_enqiry_"
        
  Then page should be navigated to "Enqiry List"