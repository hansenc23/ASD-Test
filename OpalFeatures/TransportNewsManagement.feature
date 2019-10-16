    
     Feature: Transport News Management
 
         Scenario: Successfuly create, edit, delete an Article
         Given User is staying at "login.jsp"
         And User has been identified as an admin
         And User smash on the button "login_submit"
         And User smash on the button "loginAction_success"
         And User smash on the button "News_management"
         And User entered all article details
         And User smash on the button "createArticle_submit"
         And User smash on the button "Cucumber Test"
         And User entered all update details
         And User smash on the button "updateArticle_update"
         And User smash on the button "articleUpdate_back"
         And User smash on the updated button "Cucumber Test updated"
         And User smash on the button "updateArticle_delete"
         And User smash on the button "articleUpdate_back"
         Then The User should be navigated to "Create Article"
 
         Scenario: Customer successfully view the Article
         Given User is staying at "main.jsp"
         When User smash on the button "sidebar_articleView"
         Then The User should be navigated to "View Article" 