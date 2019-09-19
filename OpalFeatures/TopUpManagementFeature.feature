# Feature: TopUpManagementFeature
#     As a user of Opal project 
#     I want to create/delete/update payment method
#     So that I can top up my card with my payment method
# 
#     Scenario: Successfully create/update/delete preffered payment method
#         Given User is in the "login.jsp"
#         When User fills all user detail
#         And User clicks onto "login_submit"
#         And User clicks onto "loginAction_success"
#         And User clicks onto "sidebar_paymentMethodManagement"
#         And User clicks onto "paymentMethodManagement_addMethod"
#         And User fills all paymentmethod detail
#         And User clicks onto "addPaymentMethod_submit"
#         And User clicks onto "addPaymentMethodOutcome_back"
#         And User clicks onto "9876987698769876"
#         And User fills all update detail
#         And User clicks onto "updatePaymentmethod_update"
#         And User clicks onto "updatePaymentmethod_back"
#         And User clicks onto "7654765476547654"
#         And User clicks onto "updatePaymentmethod_delete"
#         Then User clicks onto "updatePaymentmethod_back"
#     Scenario: Successfully create top up card
#         Given User is in the "login.jsp"
#         When User fills all user detail
#         And User clicks onto "login_submit"
#         And User clicks onto "loginAction_success"
#         And User clicks onto "sidebar_topUpValue"
#         And User fills all payment amount
#         And User clicks onto "topUpValue_submit"
#         And User fills all the payment detail
#         And User clicks onto "topUpCard_submit"