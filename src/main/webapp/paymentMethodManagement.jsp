<%-- 
    Document   : paymentMethodManagement
    Created on : Sep 4, 2019, 6:41:12 PM
    Author     : Hieu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/paymentManagement.css">
        <title>Update Payment method</title>
    </head>
    <body>
        <div class = "paymentManagement">
            
            <form class="methods" method="post" action="updatePaymentmethod.jsp">
              
        <%      
                MongoDBConnector connector = new MongoDBConnector();
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList();
                int i = 0;
                if(!paymentMethods.isEmpty()){
                    for (Paymentmethod paymentMethod: paymentMethods){  
                        String cardnum = paymentMethod.getCardNumber();
                        ++i;
        %>
                    
                            
                            <div class = "method">
                                <h4>Payment method</h4>
                            <p>First Name: <%=paymentMethod.getFirstName()%></p>
                            <p>Last Name:<%=paymentMethod.getLastName()%></p>
                            <p>Card Number:<%=cardnum.substring(0, 4)%>************ </p>
                            <input class = "button" type ="submit"  value="Update/Delete" name = "<%=cardnum%>" id ="<%=cardnum%>">
                        </div>
                        <%              
                    }
                    if(i< 3){
                        %>
                        <div  class = "addmethod">
                            <a id="paymentMethodManagement_addMethod" href = "addPaymentMethod.jsp"> <span>Add your new payment method here !</span> </a>
                     </div>
                        <%
                    }
} else {
                        %>
                        <h3>You do not have any payment methods. Please <a id="paymentMethodManagement_addMethod" href = "addPaymentMethod.jsp"> <span>Add your new payment method here !</span> </a></h3>
                         
                     
                       
                        <%

}
        %>
             
                
            </form>
            
            
        </div>
    </body>
</html>
