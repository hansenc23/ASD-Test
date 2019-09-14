# Feature: Register an Opal Card
#     As a staff
#     I want to register an Opal Card to the database
#     So that the customer can link the Opal card
# 
#   
#   Scenario: Successfully register an Opal Card  
#     Given the Staff is in the "adminPage.jsp"
#     When the Staff click on "cardManagement"
#     And the Staff click on "registerCard"
#     And the Staff fill in the new Opal Card details for "OpalID"
#     And the Staff click on "registerCard_register"
#     Then the page should give a green success feedback
# 
#   Scenario Outline: Failed register an Opal Card  
#     Given the Staff is in the "adminPage.jsp"
#     When the Staff click on "cardManagement"
#     And the Staff click on "registerCard"
#     And the Staff fill in the new Opal Card details for "<ExistedOpalID>"
#     And the Staff click on "registerCard_register"
#     Then the page should give a red fail feedback
#     Examples:
#     |ExistedOpalID|
#     |8888 8888 8888 8888|
#     
# 
