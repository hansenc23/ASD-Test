Feature: Order Opal Card Feature

  Scenario Outline: Successfully order and cancel an Opal Card
    Given User is in the "main.jsp"
    When User Click on "order_opal_card"
    And User Click on "<opal_type>"
    And User fill in contact detail
    And User click "contact_continue"
    And User select the top up value
    And User click "order_value_continue"
    And User fill in payment detail
    And User click "paymentDetail_continue"
    And User click "orderConfirmation_edit"
    And User fill in edit detail
    And User click "edit_continue"
    And User click "<succeed_or_cancelled>"
    Then The page should be navigated to "<succeed_or_cancelled_page>"
    Examples:
    |opal_type      |succeed_or_cancelled       |succeed_or_cancelled_page  |
    |type_adult     |orderConfirmation_confirm  |Order Succeed              |
    |type_concession|orderConfirmation_cancelled|Order Cancelled            |

  


  

  
 
  
  
  
