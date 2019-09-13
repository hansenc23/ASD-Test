<%-- 
    Document   : updatePaymentmethod.jsp
    Created on : Sep 4, 2019, 10:22:17 PM
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
        <link rel="stylesheet" href="./css/topUp.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Update Payment method</title>
    </head>
    <body>
        <%
        if(request.getParameter("Updated") == null && request.getParameter("Removed") == null){
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass); 
        Paymentmethods pmtmethods = new Paymentmethods();
        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
        pmtmethods  =  connector.getPaymentMethods(user);
        paymentMethods = pmtmethods.getList();
        Paymentmethod p = new Paymentmethod("","","", 0, 0, 0);
                    for (Paymentmethod paymentMethod: paymentMethods){ 
                        String ordercard = request.getParameter(paymentMethod.getCardNumber());
                        if(ordercard != null){
                            p = paymentMethod;
                        }
                    }
        String paymentMethodId = p.getCardNumber();
        session.setAttribute("paymentMethodId", paymentMethodId);
        %>
        
        <div class = "topup">
            <h3>Edit or remove seleted payment detail</h3>
        <form  method = "post" action = "updatePaymentmethod.jsp" >
            <table>
                   
                        <tr><td>First name(s)</td><td><input id="updatePaymentmethod_firstName" type = "text" value="<%=p.getFirstName() %>" name = "firstname" required></td>
                            <td>Last name</td><td><input id="updatePaymentmethod_lastName"type = "text"value="<%=p.getLastName() %>" name = "lastname" required></td></tr>
                        <tr><td>Card number</td><td><input id="updatePaymentmethod_cn"type = "text" value="<%=p.getCardNumber() %>"  name = "cardnumber" required></td></tr>
                        <tr><td>Expiry date</td>
                            <td>
                            <select id="updatePaymentmethod_expiryMonth" value="<%=p.getExpiryMonth()%>" name = "expiryMonth">
                                <option value="01">January</option>
                                <option value="02">February </option>
                                <option value="03">March</option>
                                <option value="04">April</option>
                                <option value="05">May</option>
                                <option value="06">June</option>
                                <option value="07">July</option>
                                <option value="08">August</option>
                                <option value="09">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                            <select id="updatePaymentmethod_expiryYear" value="<%=p.getExpiryYear()%>" name = "expiryYear">
                                <option value="19"> 2019</option>
                                <option value="20"> 2020</option>
                                <option value="21"> 2021</option>
                                <option value="22"> 2022</option>
                                <option value="23"> 2023</option>
                                <option value="24"> 2024</option>
                                <option value="25"> 2025</option>
                                <option value="26"> 2026</option>  
                            </select>
                            </td>
                            <td>CVV</td>
                            <td><input id="updatePaymentmethod_cvv" type = "text" value="<%=p.getCvv()%>" name = "cvv" required></td></tr>
                        <tr><td><input id="updatePaymentmethod_update" class = "button" type =  "submit" name="Updated" value = "Update"> </td>
                            <td><input id="updatePaymentmethod_delete" class = "button" type =  "submit" name="Removed" value = "Remove"></td>
                            <td><a class = "button" href = "paymentMethodManagement.jsp">Back</a></td></tr>
                    </table>
                </form>
                        </div>
                            <%
                                } else if (request.getParameter("Updated") != null && user !=null){
                                    String initPaymentId = (String)session.getAttribute("paymentMethodId");
                                    String adminemail = (String)session.getAttribute("adminemail");
                                    String adminpass = (String)session.getAttribute("adminpassword");
                                    MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass); 
                                    String cardNumber = request.getParameter("cardnumber");
                                    String firstName = request.getParameter("firstname");
                                    String lastName = request.getParameter("lastname");
                                    int expiryMonth = Integer.parseInt(request.getParameter("expiryMonth"));
                                    int expiryYear = Integer.parseInt(request.getParameter("expiryYear"));
                                    int cvv = Integer.parseInt(request.getParameter("cvv"));
                                    Paymentmethod p = new Paymentmethod(firstName,lastName,cardNumber, expiryMonth,expiryYear, cvv);
                                    String outcome = connector.editPaymentMethod(initPaymentId,p, user);
                                    %>
                                    <div class = "topup">
                                        <h3><%= outcome %></h3>
                                        <a id="updatePaymentmethod_back"class = "button" href = "paymentMethodManagement.jsp">Back</a>
                                    </div>
                                    <%
                                        //Remove the payment methods. 
                                        } else if(request.getParameter("Removed") != null ){
                                        String initPaymentId = (String)session.getAttribute("paymentMethodId");
                                        String adminemail = (String)session.getAttribute("adminemail");
                                        String adminpass = (String)session.getAttribute("adminpassword");
                                        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
                                        String outcome = connector.deletePaymentMethods(initPaymentId, user);
                                            %>
                                             <div class = "topup">
                                        <h3><%= outcome %></h3>
                                        <a id="updatePaymentmethod_back"class = "button" href = "paymentMethodManagement.jsp">Back</a>
                                    </div>
                                            <%
                                        } else {
                                    %>
                                           <div class = "topup">
                                        <h3>Please select a valid payment method </h3>
                                        <a id="updatePaymentmethod_back" class = "button" href = "paymentMethodManagement.jsp">Back</a>
                                    </div>
                                    <%
}
                                %>
        
        
</html>
