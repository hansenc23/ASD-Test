Feature: Order Opal Card Feature

  Scenario Outline: Successfully order an Opal Card
    Given User is in the "main.jsp"
    When User Click on "order_opal_card"
    And User Click on "<opal_type>"
    And User fill in contact detail
    And User click "contact_continue"
    And User select the top up value
    And User click "order_value_continue"
    And User select the top up value
    And User click "order_value_continue"
    And User fill in payment detail
    And User click "paymentDetail_continue"
    And User click "orderConfirmation_edit"
    And User fill in edit detail
    And User click "edit_continue"
    And User click "orderConfirmation_confirm"
    Then The page should be navigated to "Order Succeed"
    Examples:
    |opal_type|
    |type_adult|
    |type_concession|


  

  
 
  
  
  
