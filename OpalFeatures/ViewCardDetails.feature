Feature: View Details of an Opal Card
    As a customer
    I want to view the details of an Opal Card
    In order to see the remaining balance

Scenario: Successfully view the details of the Opal card
    Given the User is logged in to the website
    And is in the "main.jsp"
    When User click on "viewDetails" for "opalID"
    Then the page should be navigated to "Card Details"
#    And the User can see the "opalID" details
