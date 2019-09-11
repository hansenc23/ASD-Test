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
        <link rel="stylesheet" type="text/css" href="css/paymentManagement.css">
        <title>Update Payment method</title>
    </head>
    <body>
        <div class = "paymentManagement">
            
            <form class="methods" method="post" action="updatePaymentmethod.jsp">
              
                          <%      
                String adminemail = (String)session.getAttribute("adminemail");
                String adminpass = (String)session.getAttribute("adminpassword");
                MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
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
                        <div class = "addmethod">
                            <a  href = "addPaymentMethod.jsp"> <span>Add your new payment method here !</span> </a>
                     </div>
                        <%
                    }
} else {
                        %>
                        <h3>You do not have any payment methods. Please <a  href = "addPaymentMethod.jsp"> <span>Add your new payment method here !</span> </a></h3>
                         
                     
                       
                        <%

}
        %>
             
                
            </form>
            
            
        </div>
    </body>
</html>
