<%-- 
    Document   : paymentDetail
    Created on : 07/08/2019, 6:55:51 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.util.Random"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
        <title>Payment Detail</title>
    </head>
    <body>
        
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            String customerId;
            
            //if user is not login, the page is from contactDetail.jsp
            if(user == null){
                
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");
                String address = request.getParameter("address");  
                
                //add the anonymous user detail to the user database
                User anonymous = new User(firstname, lastname, email, password, address, phone, "");
                session.setAttribute("anonymous", anonymous);
                connector.add(anonymous);
                
                //assign the customerID as the anonymous userID
                customerId = connector.getCustomerID(email, password);
                
            }
            //if user is login, the page is from chooseOpalCard.jsp
            else{
                
                String type;
                String adult = request.getParameter("adult");
                String child = request.getParameter("child");
                String pensioner = request.getParameter("pensioner");
                String concession = request.getParameter("concession");

                if(adult!= null){
                    type = "adult";
                }
                else if(child != null){
                    type = "child";
                }
                else if (pensioner != null){
                    type = "pensioner";
                }
                else{
                    type = "concession";
                }
                
                //random the opalid
                String opalID = "" + (new Random()).nextInt(99999999) + (new Random()).nextInt(99999999);
                
                //assign the opalid and the type
                Order addType = new Order("", opalID, "", type, "", 0, "");
                session.setAttribute("addType", addType);
                
                //get the user email and password from user session
                String email = user.getEmail();
                String password = user.getPassword();
                
                //assign the customerID as user ID
                customerId = connector.getCustomerID(email, password);
                
            }
                
                //to get the data from addType session
                Order getType = (Order)session.getAttribute("addType");
                
                //add the customer id to new session
                Order addCusId = new Order(customerId, getType.getOpalId(), "", getType.getOpalType(), "", 0, "");
                session.setAttribute("addCusId", addCusId);
                
                //after add the value from addType to addCusId, remove the session
                session.removeAttribute( "addType" );
            
        %>
        <div class = "paymentDetail">        
            <form method = "post" action = "paymentDetail.jsp" >
                <h4>Add value to your Opal Card</h4>
                <table>
                    <tr><td>Top up amount</td><td><select name = "amount" required>
                                <option value = "10.00">$10.00</option>
                                <option value = "15.00">$15.00</option>
                                <option value = "30.00">$30.00</option>
                                <option value = "50.00">$50.00</option>
                            </select></td></tr>
        <%
            if(user == null){
        %>            
                    <tr><td colspan = "3"><a class = "button" href = "contactDetail.jsp">Back</a></td>
        <%
            }
            else{
        %>
                    <tr><td colspan = "3"><a class = "button" href = "chooseOpalCard.jsp">Back</a></td>
        <%
            }
        %>
                        <td align = "right"><input type =  "submit" value = "Continue"></td></tr>
                    <tr><td><a class = "button" href = "orderCancelled.jsp">Cancel</a></tr>                
                </table>
                </form>
            </form>
        </div>
    </body>
</html>