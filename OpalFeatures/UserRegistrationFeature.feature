
Feature: Online User Registration
=======
#----------------------------------
# Empty Cucumber .feature file
#----------------------------------
# Feature: Online User Registration
   
   

   Scenario: Successfully created an account
     Given User is in the "main.jsp"
     When User Click on "navbar_register"
     And User fill in contact detail
    # And User click "register_submit"
     And User clicks "back"
    
        


   Scenario: Successfully update account details
      Given user is in "login.jsp"
      And user fill in login details
      And user choose "loginAction_success"
      And User Clicks on "navbar_profile"
      And User edits "edit_profile"
      And User update details
      And user click to "back_to_profile"
      And user click change password "change_password"
      And user update password
      And user is back to profile "back_to_profile"
      And user choose add security question "add_question"
      And user choose from a list of question
      And user goes back to profile "back_to_profile"



   Scenario: Successfully forget password
      Given user in "login.jsp"
      And user chooses "forget_button"
      And user enter email address
      And user input answer



  


  

  
 
  
  
  
