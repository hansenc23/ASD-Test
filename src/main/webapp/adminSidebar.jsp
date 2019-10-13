<%-- 
    Document   : adminSidebar
    Created on : 28/08/2019, 11:18:04 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/sidebar.css">
        
    </head>
    <body>
        <div class="sidenav">
            <a href="adminPage.jsp">Home</a>
            <a id="account_management" href="accountList.jsp">Account Management</a>
            <a id="card_management" href="cardManagement.jsp">Card Management</a>
            <a id="order_management" href="orderManagement.jsp">Order Management</a>
            <a id="enqiry_management" href="enqiryListStaff.jsp">Enquiry Management</a>
            <a id="FAQs_management" href="FAQsCreate.jsp">FAQs Management</a>
            <a id="News_management"href="articleCreate.jsp">Transport News Management</a>
            <a href="#">Notification Management</a>
            <a id="access_management" href="accessManager.jsp">Access Manager</a>  
        </div>
    </body>
</html>
