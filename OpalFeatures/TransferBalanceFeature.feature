Feature: Transfer Balance Management

Scenario: Successfully transfer balance
    Given the User is already logs in to the website
    When the User clicks the "sidebar_transferBalance"
    And the User choose the "fromOpalID"
    And the User choose the "toOpalID"
    And the User submit it by clicks on "transferContinue"
    And the User choose the "transferValue"
    And the User submit it by clicks on "transferNext"
    And the User see that the details are correct
    And the User clicks on "confirmTransfer"
    Then the User should see transfer success message

Scenario: Successfully edit transfer balance before confirmation
    Given the User is already logs in to the website
    When the User clicks the "sidebar_transferBalance"
    And the User choose the "fromOpalID"
    And the User choose the "toOpalID"
    And the User submit it by clicks on "transferContinue"
    And the User choose the "transferValue"
    And the User submit it by clicks on "transferNext"
    And the User see that the details are correct
    And the User clicks on "editTransfer"
    And the User edit the transfer balance details
    And the User clicks on "submitEdit"
    And the User clicks on "confirmTransfer"
    Then the User should see transfer success message

Scenario: Successfully cancel transfer balance
    Given the User is already logs in to the website
    When the User clicks the "sidebar_transferBalance"
    And the User choose the "fromOpalID"
    And the User choose the "toOpalID"
    And the User submit it by clicks on "transferContinue"
    And the User choose the "transferValue"
    And the User submit it by clicks on "transferNext"
    And the User see that the details are correct
    And the User clicks on "cancelTransfer"
    Then the User should see cancelled transfer message

Scenario: Successfully list transfer balance history
    Given the User is already logs in to the website
    When the User clicks the "sidebar_transferBalance"
    And the User clicks on "showTransferHistory"
    Then the User should see the list of transfer balance history

Scenario: Successfully search transfer balance history by date
    Given the User is already logs in to the website
    When the User clicks the "sidebar_transferBalance"
    And the User clicks on "showTransferHistory"
    And the User choose the "enterDate"
    And the User clicks on "searchTransID"
    Then the User should see record on the searched date
