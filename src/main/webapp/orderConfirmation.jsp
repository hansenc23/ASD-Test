<%-- 
    Document   : confirmation
    Created on : 08/08/2019, 12:47:31 AM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderConfirmation.css">
        <title>order confirmation page</title>
    </head>
    <body>
        <div class = "h3">
            <h3>&nbsp;&ensp;Order Confirmation</h3>
        </div>
        <div class = "orderConfirmation">    
        <form method = "post" action = "orderSucceed.jsp" >
            <table>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);    
            
            Order getAmount = (Order)session.getAttribute("addAmount");
            
            
            
                
            if(user == null){   
                if(request.getParameter("change") == null){ 

                    String cardfname = request.getParameter("cardfname");
                    String cardlname = request.getParameter("cardlname");
                    String cardnumber = request.getParameter("cardnumber");
                    int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
                    int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
                    int cvv = Integer.parseInt(request.getParameter("cvv")); 

                    Paymentmethod payment = new Paymentmethod(cardfname, cardlname, cardnumber, expirymonth, expiryyear, cvv);
                    session.setAttribute("anonpay", payment);

                    User getAnonymous = (User)session.getAttribute("anonymous");

        %>    
                        <tr><td>Name : </td><td><%= getAnonymous.getFirstName()%> <%= getAnonymous.getLastName()%></td></tr>
                        <tr><td>Email Address :</td><td><%= getAnonymous.getEmail()%></td>
                            <td>Mobile Phone :</td><td><%= getAnonymous.getPhoneNumber()%></tr>
                        <tr><td>Address :</td><td><%= getAnonymous.getAddress()%></td></tr>
                        <tr><td>Top up amount :</td><td><%=getAmount.getValue()%></td></tr>
                    </table>
                    <hr>
                    <table>
                        <tr><td>First name(s) :</td><td><%=cardfname%></td>
                            <td>Last name :</td><td><%=cardlname%></td></tr>
                        <tr><td>Card number :</td><td><%=cardnumber%></td></tr>
                        <tr><td>Expiry date :</td><td><%=expirymonth%>/<%= expiryyear%></td><td>CVV :</td><td><%= cvv%></td></tr>
        <%      }
                else{
                    String upFname = request.getParameter("updateFname");
                    String upLname = request.getParameter("updateLname");
                    String upEmail = request.getParameter("updateEmail");
                    String upPhone = request.getParameter("updatePhone");
                    String upAddress = request.getParameter("updateAddress");
                    double upValue = Double.parseDouble(request.getParameter("updateValue"));
                    String upFirstname = request.getParameter("updateFirstname");
                    String upLastname = request.getParameter("updateLastname");
                    String upCardnumber = request.getParameter("updateCardnum");
                    int upexpirymonth = Integer.parseInt(request.getParameter("updateExpirymonth"));
                    int upexpiryyear = Integer.parseInt(request.getParameter("updateExpiryyear"));
                    int upcvv = Integer.parseInt(request.getParameter("updateCvv"));
                    
                    Paymentmethod payment = new Paymentmethod(upFirstname, upLastname, upCardnumber, upexpirymonth, upexpiryyear, upcvv);
                    session.setAttribute("updateanonpayment", payment);

                    Order updateOrder = new Order("", "", "", "", "", upValue, "");
                    session.setAttribute("updateOrder", updateOrder);

                    //update anonymous users
                    
        %>
                        <tr><td>Name : </td><td><%=upFname%> <%=upLname%></td></tr>
                        <tr><td>Email Address :</td><td><%=upEmail%></td>
                            <td>Mobile Phone :</td><td><%=upPhone%></tr>
                        <tr><td>Address :</td><td><%=upAddress%></td></tr>
                        <tr><td>Top up amount :</td><td><%=upValue%></td></tr>
                    </table>
                    <hr>
                    <table>
                        <tr><td>First name(s) :</td><td><%=upFirstname%></td>
                            <td>Last name :</td><td><%=upLastname%></td></tr>
                        <tr><td>Card number :</td><td><%=upCardnumber%></td></tr>
                        <tr><td>Expiry date :</td><td><%=upexpirymonth%>/<%=upexpiryyear%></td><td>CVV :</td><td><%=upcvv%></td></tr>
                        <tr><td><input type="hidden" value="isChange" name="isChange"></td></tr>
        <%
                }
            }
            else{
        %>
                    <tr><td>Name : </td><td><%= user.getFirstName()%> <%= user.getLastName()%></td></tr>
                    <tr><td>Email Address :</td><td><%= user.getEmail()%></td>
                        <td>Mobile Phone :</td><td><%= user.getPhoneNumber()%></tr>
                    <tr><td>Address :</td><td><%= user.getAddress()%></td></tr>
        <%
                if(request.getParameter("change") == null){ 
        %>
                    <tr><td>Top up amount :</td><td><%=getAmount.getValue()%></td></tr>
        <%      }
                else{
                    double upValue = Double.parseDouble(request.getParameter("updateValue"));
                    Order updateOrder = new Order("", "", "", "", "", upValue, "");
                    session.setAttribute("updateOrder", updateOrder);
        %>
                    <tr><td>Top up amount :</td><td><%=upValue%></td></tr>
                    <tr><td><input type="hidden" value="isChange" name="isChange"></td></tr>
        <%  
                }
        %>
                </table>
                <hr>
        <%
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList(); 
                
                if(paymentMethods.isEmpty() || request.getParameter("cardnumber") != null){
                    if(request.getParameter("change") == null){ 
                        String cardfname = request.getParameter("cardfname");
                        String cardlname = request.getParameter("cardlname");
                        String cardnumber = request.getParameter("cardnumber");
                        int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
                        int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
                        int cvv = Integer.parseInt(request.getParameter("cvv")); 

                        Paymentmethod payment = new Paymentmethod(cardfname, cardlname, cardnumber, expirymonth, expiryyear, cvv);
                        session.setAttribute("orderPayment", payment);
        %>
                        <table>
                            <input type="hidden" value="another" name="another">
                            <tr><td>First name(s) :</td><td><%=cardfname%></td>
                                <td>Last name :</td><td><%=cardlname%></td></tr>
                            <tr><td>Card number :</td><td><%=cardnumber%></td></tr>
                            <tr><td>Expiry date :</td><td><%=expirymonth%>/<%= expiryyear%></td><td>CVV :</td><td><%= cvv%></td></tr>
                            <tr><td><input type="hidden" value="<%=cardfname%>" name="fname"></td>
                                <td><input type="hidden" value="<%=cardlname%>" name="lname"></td>
                                <td><input type="hidden" value="<%=cardnumber%>" name="cardnum"></td>
                                <td><input type="hidden" value="<%=expirymonth%>" name="expirymonth"></td>
                                <td><input type="hidden" value="<%=expiryyear%>" name="expiryyear"></td>
                                <td><input type="hidden" value="<%=cvv%>" name="cvv"></td></tr>
        <%          }
                    else{
                        String upFirstname = request.getParameter("updateFname");
                        String upLastname = request.getParameter("updateLname");
                        String upCardnumber = request.getParameter("updateCnum");
                        int upexpirymonth = Integer.parseInt(request.getParameter("updateEmonth"));
                        int upexpiryyear = Integer.parseInt(request.getParameter("updateEyear"));
                        int upcvv = Integer.parseInt(request.getParameter("updateC"));
                        
                        Paymentmethod payment = new Paymentmethod(upFirstname, upLastname, upCardnumber, upexpirymonth, upexpiryyear, upcvv);
                        session.setAttribute("updateOrderPay", payment);
        %>
                        <table>
                            <tr><td>First name(s) :</td><td><%=upFirstname %></td>
                                <td>Last name :</td><td><%=upLastname%></td></tr>
                            <tr><td>Card number :</td><td><%=upCardnumber%></td></tr>
                            <tr><td>Expiry date :</td><td><%=upexpirymonth%>/<%=upexpiryyear%></td><td>CVV :</td><td><%=upcvv%></td></tr>  
                            <tr><td><input type="hidden" value="isChange" name="isChange"></td></tr>
        <%
                    }
                }
                else {
                    if(request.getParameter("change") == null){ 
                        Paymentmethod p = new Paymentmethod("","","", 0, 0, 0);
                        for (Paymentmethod paymentMethod: paymentMethods){ 
                            String ordercard = request.getParameter(paymentMethod.getCardNumber());
                            if(ordercard != null){
                                p = paymentMethod;
                            }
                        }
                        Order addcardnum = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), p.getCardNumber(), getAmount.getOpalType(), "", getAmount.getValue(), "");
                        session.setAttribute("addCardNum", addcardnum);
        %>
                        <table>
                            <tr><td>First name(s) :</td><td><%= p.getFirstName()%></td>
                                <td>Last name :</td><td><%= p.getLastName()%></td></tr>
                            <tr><td>Card number :</td><td><%= p.getCardNumber()%></td></tr>
                            <tr><td>Expiry date :</td><td><%= p.getExpiryMonth()%>/<%= p.getExpiryYear()%></td><td>CVV :</td><td><%= p.getCvv()%></td></tr>
                            <tr><td><input type="hidden" value="<%=p.getFirstName()%>" name="fname"></td>
                                <td><input type="hidden" value="<%=p.getLastName()%>" name="lname"></td>
                                <td><input type="hidden" value="<%=p.getCardNumber()%>" name="cardnum"></td>
                                <td><input type="hidden" value="<%=p.getExpiryMonth()%>" name="expirymonth"></td>
                                <td><input type="hidden" value="<%=p.getExpiryYear()%>" name="expiryyear"></td>
                                <td><input type="hidden" value="<%=p.getCvv()%>" name="cvv"></td></tr>                        
        <%  
                    }
                    else{
                        String upFirstname = request.getParameter("updateFname");
                        String upLastname = request.getParameter("updateLname");
                        String upCardnumber = request.getParameter("updateCnum");
                        int upexpirymonth = Integer.parseInt(request.getParameter("updateEmonth"));
                        int upexpiryyear = Integer.parseInt(request.getParameter("updateEyear"));
                        int upcvv = Integer.parseInt(request.getParameter("updateC"));  
//
                        Paymentmethod payment = new Paymentmethod(upFirstname, upLastname, upCardnumber, upexpirymonth, upexpiryyear, upcvv);
                        session.setAttribute("updateOrderPay", payment);
        %>
                        <table>
                            <tr><td>First name(s) :</td><td><%=upFirstname %></td>
                                <td>Last name :</td><td><%=upLastname%></td></tr>
                            <tr><td>Card number :</td><td><%=upCardnumber%></td></tr>
                            <tr><td>Expiry date :</td><td><%=upexpirymonth%>/<%=upexpiryyear%></td><td>CVV :</td><td><%=upcvv%></td></tr>   
                            <tr><td><input type="hidden" value="isChange" name="isChange"></td></tr>
        <%
                    }
                }
            } 
        %>
                        <tr><td colspan = "3"><input type="submit" formaction="orderEdit.jsp" value="Edit" name="edit"></td><td align = "right"><input id="orderConfirmation_confirm" type="submit" value="Confirm" name = "confirm"></td></tr>
                        <tr><td><a class = "button" href = "orderCancelled.jsp">Cancel</a></tr>
                    </table>
            </form>
        </div>
        
    </body>
</html>
