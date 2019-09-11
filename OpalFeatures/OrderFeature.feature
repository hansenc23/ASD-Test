Feature: Order Opal Card Feature

  Scenario Outline: Choose an Opal Card
    Given User is in the "main.jsp"                                                                                                                                                                                                                                                            
    When User Click on "<opal_type>"
    Then The page should be navigated to "contactDetail.jsp"
    Examples:
    |opal_type|
    |type_adult|
    |type_child|
    |type_pensioner|
    |type_concession|
    
  Scenario: Successfully fill in the contact detail
    Given User is in the "contactDetail.jsp"                                                                                                                                                                                                                                                             
    When User fill in contact detail
    And User click "contact_continue"
    Then The page should be navigated to "Order Value"

  Scenario: Successfully add value to the opal card
    Given User is in the "orderValue.jsp"                                                                                                                                                                                                                                                            
    When User select the top up value
    And User click "order_value_continue"
    Then The page should be navigated to "Order Payment Detail"

  Scenario: Successfully fill in the payment detail
    Given User is in the "paymentDetail.jsp"                                                                                                                                                                                                                                                             
    When User fill in payment detail
    And User click "paymentDetail_continue"
    Then The page should be navigated to "Order Confirmation"

  Scenario: Successfully edit the order
    Given User is in the "orderConfirmation.jsp"
    When User click "orderConfirmation_edit"
    And User fill in edit detail
    And User click "edit_continue"

  Scenario: Successfully order
    Given User is in the "orderConfirmation.jsp"
    When User click "orderConfirmation_cancelled"
    Then The page should be navigated to "Order Cancelled"

  Scenario: Successfully order
    Given User is in the "orderConfirmation.jsp"
    When User click "orderConfirmation_confirm"
    Then The page should be navigated to "Order Succeed"

  

  
 
  
  
  
