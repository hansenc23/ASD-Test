<%-- 
    Document   : main.jsp
    Created on : 14/08/2019, 11:13:01 PM
    Author     : hanse
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
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
            //User user = (User)session.getAttribute("user");
            
            //Add paymentmethod to user 
            if (request.getParameter("firstname") != null){
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
        int expiryMonth = Integer.parseInt(request.getParameter("expiryMonth"));
        int expiryYear = Integer.parseInt(request.getParameter("expiryYear"));
        int cvv = Integer.parseInt(request.getParameter("cvv"));
        Paymentmethod paymt = new Paymentmethod(firstname,lastname,cardnumber,expiryMonth,expiryYear,cvv);
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
        connector.addPayment(paymt, user);
        }
            
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            OpalCards dbCards = new OpalCards();
            ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
            dbCards = connector.getOpalCards(user);
            cards = dbCards.getList(); 
            if (cards != null) {
        %>
            <div class="box">
            <h1>Opal Cards</h1>
            <table>
                <thead>
                    <th>Card Type</th>
                    <th>Opal Card Number</th>
                    <th>Balance</th>
                    <th>&nbsp;</th>
                </thead>
        <%
            for (OpalCard card: cards) {
                String imgURL = "";
                String cardType = card.getType();
                if (cardType.equalsIgnoreCase("Child")) {
                    imgURL = "image/card_child_large.png";
                }
                else if (cardType.equalsIgnoreCase("Adult")) {
                    imgURL = "image/card_adult_large.png";
                }
                else if (cardType.equalsIgnoreCase("Senior")) {
                    imgURL = "image/card_pensioner_large.png";
                }
                else if (cardType.equalsIgnoreCase("Concession")) {
                    imgURL = "image/card_concession_large.png";
                }
                
        %>        
                    <tr>
                        <td><img src=<%=imgURL%> width="30px">&ensp;&ensp;<%=cardType%></td>
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
        <%
            }               
        %>
            </table>
            </div>
        <%
        }
        else {
        %>
            <div class="box">    
                <h2>Welcome to Opal Card Management website!</h2>
            </div>
        <%
        }
        %>
    </body>
</html>

