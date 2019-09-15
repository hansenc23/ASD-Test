
   Feature: Order Opal Card Feature
      
     @revomeUser 
     Scenario: Successfully order an Opal Card and edit an order as an anonymous user
       Given User is in the "main.jsp"
       When User click on "order_opal_card"
       And User click on "type_adult"
       And User fill in contact detail
       And User click on "contact_continue"
       And User select the top up value
       And User click on "order_value_continue"
       And User fill in payment detail
       And User click on "paymentDetail_continue"
       And User click on "orderConfirmation_edit"
       And User fill in edit detail
       And User click on "edit_continue"
       And User click on "orderConfirmation_confirm"
       Then The page should be navigated to "Order Succeed"
     
     Scenario: Successfully order an Opal Card as a customer
       Given User is in the "login.jsp"
       Given User is login as a customer
       When User click on "order_opal_card"
       And User click on "type_child"
       And User select the top up value
       And User click on "order_value_continue"
       And User fill in payment detail
       And User click on "paymentDetail_continue"
       And User click on "orderConfirmation_cancelled"
       Then The page should be navigated to "Order Cancelled"
   
      Scenario: Successfully view the order history
       Given User is in the "login.jsp"
       Given User is login as a customer
       When User click on "order_history"
       Then The page should be navigated to "Order History"
   
      Scenario: Successfully view all the order
       Given User is in the "login.jsp"
       Given User is login as an admin
       When User click on "order_management"
       Then The page should be navigated to "Order Management"

