# 
#   Feature: Access Manager
#  
#   Scenario: A user will be able to login , and logout
#       Given the User is in the "main.jsp"
#       When User click the "navbar_login"
#       And User fill user information
#       And User click the "login_submit"
#       And User click the "loginAction_success"
#       And User click the "navbar_logout"
#       Then page should be navigated to "JSP Page"
#  
#     
#   Scenario: A user want to delete their access history 
#       Given the User is in the "main.jsp"
#       When User click the "navbar_login"
#       And User fill user admin information
#       And User click the "login_submit"
#       And User click the "loginAction_success"
#       And User click the "sidebar_AccessManager"
#       And User click the "delete"
#       And User refresh page
#       Then page should be navigated to "Access manager"