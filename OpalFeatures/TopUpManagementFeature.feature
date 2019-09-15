# Feature: TopUpManagementFeature
#     As a user of Opal project 
#     I want to create/delete/update payment method
#     So that I can top up my card with my payment method
# 
#     Scenario: Successfully create/update/delete preffered payment method
#         Given User is in the "login.jsp"
#         When User fill in user detail
#         And User click "login_submit"
#         And User click "loginAction_success"
#         And User click "sidebar_paymentMethodManagement"
#         And User click "paymentMethodManagement_addMethod"
#         And User fill in paymentmethod detail
#         And User click "addPaymentMethod_submit"
#         And User click "addPaymentMethodOutcome_back"
#         And User click "9876987698769876"
#         And User fill in update detail
#         And User click "updatePaymentmethod_update"
#         And User click "updatePaymentmethod_back"
#         And User click "7654765476547654"
#         And User click "updatePaymentmethod_delete"
#         Then User click "updatePaymentmethod_back"
#     Scenario: Successfully create top up card
#         Given User is in the "login.jsp"
#         When User fill in user detail
#         And User click "login_submit"
#         And User click "loginAction_success"
#         And User click "sidebar_topUpValue"
#         And User fill in payment amount
#         And User click "topUpValue_submit"
#         And User fill in the payment detail
#         And User click "topUpCard_submit"