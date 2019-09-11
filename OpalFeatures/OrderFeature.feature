Feature: Order Opal Card Feature

  Scenario Outline: Choose an Opal Card
    Given User is in the "main.jsp"                                                                                                                                                                                                                                                            
    When User Click on <opal_type>
    Then The page should be navigated to "contactDetail.jsp"
    Examples:
    |opal_type|
    |type_adult|
    |type_child|
    |type_pensioner|
    |type_concession|
    
  Scenario: Successfully fill in the contact detail
    Given User is in the "contactDetail.jsp"                                                                                                                                                                                                                                                             
    When User fill in "contact_first_name"
    And User fill in "contact_last_name"
    And User fill in "contact_email_address"
    And User fill in "contact_mobile_phone"
    And User fill in "contact_address"
    And User click I read the tos
    And User click "contact_continue"
    Then The page should be navigated to "orderValue.jsp"

  Scenario: Successfully add value to the opal card
    Given User is in the "orderValue.jsp"                                                                                                                                                                                                                                                            
    When User choose the top up value
    And User click "order_value_continue"
    Then The page should be navigated to "paymentDetail.jsp"

  Scenario: Successfully fill in the contact detail
    Given User is in the "contactDetail.jsp"                                                                                                                                                                                                                                                             
    When User fill in "contact_first_name"
    And User fill in "contact_last_name"
    And User fill in "contact_email_address"
    And User fill in "contact_mobile_phone"
    And User fill in "contact_address"
    And User click I read the tos
    And User click "contact_continue"
    Then The page should be navigated to "orderValue.jsp"

  
 
  
  
  
