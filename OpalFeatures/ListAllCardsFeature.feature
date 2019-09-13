Feature: List all Opal cards
    As a staff
    I want to list all Opal cards
    In order to see the Opal cards from the database

    Scenario: Successfully list all Opal cards
        Given the Staff is in the "adminPage.jsp"
        When the Staff click on "cardManagement"
        And the Staff click on "showCards"
        Then the page should show all Opal cards