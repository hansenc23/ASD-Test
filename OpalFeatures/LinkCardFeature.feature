Feature: Link Card Feature
  As a customer
  I want to link my Opal card to my account
  In order to manage my Opal card

  
  Scenario: Successfully link Opal card to account    
    Given the User is logged in to the website
    And is in the "main.jsp"
    When User click on "linkCard"
    And User fill in "OpalID" with "<OpalID>"
    And User fill in "securityCode" with "<securityCode>"
    And User click "linkCard_link"
    Then the page should give a green success feedback

  Scenario Outline: Failed linking Opal card with wrong Opal details
    Given the User is logged in to the website
    And is in the "main.jsp"
    When User click on "linkCard"
    And User fill in "OpalID" with "<FailOpalID>"
    And User fill in "securityCode" with "<FailSecurityCode>"
    And User click "linkCard_link"
    Then the page should give a red fail feedback
    Examples:
    |FailOpalID|FailSecurityCode|
    |0000 0000 0000 0000|0000|