
 Feature: Online User Registration 

    Scenario: Successfully created an account
      Given User is at "main.jsp"
      When User taps "navbar_register"
      And User fill in the registration detail
      And User backs "back"
      Then user should be directed to "Home Page"       
 
    Scenario: Successfully update account details
       Given page is on "login.jsp"
       And user fills login credentials
       And user login success "loginAction_success"
       And user open profile "navbar_profile"
       And user click edit "edit_profile"
       And User updates account details
       And user goes back "back_to_profile"
       And user wants to change password "change_password"
       And User fill in new password
       And user tap back "back_to_profile"
       And user wants to add question "add_question"
       And user select the necessary question
       And User go previous page "back_to_profile"
       Then User should see profile page "Profile"

    Scenario: Successfully forget password
       Given the page shows "login.jsp"
       And user forgets "forget_button"
       And User types email
       And user answer the question
       Then page will show old password "Forget Password"
