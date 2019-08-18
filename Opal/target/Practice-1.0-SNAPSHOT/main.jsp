<%-- 
    Document   : main.jsp
    Created on : 14/08/2019, 11:13:01 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/card.css">
        <title>Card Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
            //OpalCard card = (OpalCard)session.getAttribute("card");
            
            String opalID = request.getParameter("ID1") + " " + request.getParameter("ID2") + " "
                          + request.getParameter("ID3") + " " +request.getParameter("ID4");
            String securityCode = request.getParameter("securityCode");
            double balance = 0.00;
            String type = "Adult";
            String customerID = user.getEmail();
            
            OpalCard card = new OpalCard(opalID, customerID, balance, type, securityCode);
            session.setAttribute("card", card);
            
            if (securityCode != null) {
        %>
            <div class="box">
                <h2>Opal cards</h2>
                <table>
                    <tr>
                        <th>Card Type</th>
                        <th>Opal Number</th>
                        <th>Balance</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td><img src="image/card_adult_large.png" width="30px">&ensp;&ensp;<%=card.getType()%></td>
                        <td><%=card.getOpalID()%></td>
                        <td>$<%=card.getBalance()%></td>
                        <td>
                            <form method='POST' action='cardDetail.jsp'>
                                <input type="hidden" value="<%=card.getBalance()%>" name="balance">
                                <input type="hidden" value="<%=card.getType()%>" name="type">
                                <input type="hidden" value="<%=card.getOpalID()%>" name="opalID">
                                <input type="Submit" value="Details">
                            </form>
                        </td>
                    </tr>
                </table>
            </div>
        <%
            }
        else{
        %>
            <div class="box">
                <h2>Welcome to Opal Card Management website!</h2>
            </div>
        <%
        }
        %>
    </body>
</html>