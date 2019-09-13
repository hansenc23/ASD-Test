Feature: Unlink Opal Card
   As a customer
   I want to unlink my Opal card to my account
   In order to remove it from my Opal card list

  Scenario: Successfully unlink Opal card from account    
    Given the User is logged in to the website
    And is in the "main.jsp"
    When User click on "unlinkCard"
    And User click on "unlink" for "opalID"
    Then User should not see "opalID" in the "unlink.jsp"