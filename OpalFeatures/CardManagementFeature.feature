#   Feature: Card Management Feature
#     
#     Scenario: Successfully link Opal card to account    
#       Given the User is logged in to the website
#       And is in the "main.jsp"
#       When User clicks "sidebar_linkCard"
#       And User fill in "OpalID" with "<OpalID>"
#       And User fill in "securityCode" with "<securityCode>"
#       And User submit by clicking "link"
#       Then the page should give a green success feedback
#   
#     Scenario Outline: Failed linking Opal card with wrong Opal details
#       Given the User is logged in to the website
#       And is in the "main.jsp"
#       When User clicks "sidebar_linkCard"
#       And User fill in "OpalID" with "<FailOpalID>"
#       And User fill in "securityCode" with "<FailSecurityCode>"
#       And User submit by clicking "link"
#       Then the page should give a red fail feedback
#       Examples:
#       |FailOpalID|FailSecurityCode|
#       |0000 0000 0000 0000|0000|
#   
#     Scenario: Successfully unlink Opal card from account    
#       Given the User is logged in to the website
#       And is in the "main.jsp"
#       When User clicks "sidebar_unlinkCard"
#       And User click on "unlink" for "opalID"
#       Then User should not see "opalID" in the "Unlink Card Page"
#   
#     Scenario: Successfully search an Opal Card by Opal ID
#       Given the User is logged in to the website
#       And is in the "main.jsp"
#       When User select an "OpalID"
#       And User submit by clicking "Search"
#       Then the searched "OpalID" should be shown in the page
#   
#     Scenario: Successfully view the details of the Opal card
#       Given the User is logged in to the website
#       And is in the "main.jsp"
#       When User click on "Details" for "opalID"
#       Then the page should be navigated to "Card Details Page"
#   
#     # STAFF FEATURE
#     @register_card
#     Scenario: Successfully register an Opal Card  
#       Given the Staff is logged in to the website
#       When the Staff click on "card_management"
#       And the Staff click on "register_card"
#       And the Staff fill in the new Opal Card details for "OpalID"
#       And the Staff submit by clicking "link"
#       Then the page should shows a green success feedback
#   
#     Scenario Outline: Failed register an Opal Card  
#       Given the Staff is logged in to the website
#       When the Staff click on "card_management"
#       And the Staff click on "register_card"
#       And the Staff fill in the new Opal Card details for "<ExistedOpalID>"
#       And the Staff submit by clicking "link"
#       Then the page should shows a red fail feedback
#       Examples:
#       |ExistedOpalID|
#       |8888 8888 8888 8888|
#   
#     Scenario: Successfully list all Opal cards
#       Given the Staff is logged in to the website
#       When the Staff click on "card_management"
#       And the Staff click on "show_all_cards"
#       Then the page should show all Opal cards