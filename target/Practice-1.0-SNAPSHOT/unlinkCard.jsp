<<<<<<< HEAD
<%-- 
    Document   : unlinkCard
    Created on : 17/08/2019, 12:34:24 AM
    Author     : Michelle
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
        <link rel="stylesheet" type="text/css" href="css/unlinkCard.css">
        <title>Unlink Card Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
            OpalCard card = (OpalCard)session.getAttribute("card"); 
            
            if (request.getParameter("unlink") != null){
                session.removeAttribute("card");
            }
            else{
                if (card != null) {
        %>
                <div class="box">
                    <h3>Select the opal card you would like to unlink</h3>
                    <table>
                        <tr>
                            <th>Opal Number</th>
                            <th>Balance</th>
                        </tr>
                        <tr>
                            <td><%=card.getOpalID()%></td>
                            <td>$<%=card.getBalance()%></td>
                            <td>
                                <form method="POST" action="unlinkCard.jsp">
                                    <input type="Submit" value="Unlink" name="unlink">
                                </form>
                            </td>
                        </tr>
                    </table>
                </div>
        <%
                }
            }
        %>
    </body>
</html>
=======
<%-- 
    Document   : unlinkCard
    Created on : 17/08/2019, 12:34:24 AM
    Author     : Michelle
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
        <title>Unlink Card Page</title>
    </head>
    <body>
        <%                   
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            if (request.getParameter("unlink") != null){
                OpalCard removedCard = new OpalCard(request.getParameter("opalID"));
                connector.unlinkCard(removedCard, user);
            }
            
            OpalCards dbCards = new OpalCards();
            ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
            dbCards = connector.getOpalCards(user);
            cards = dbCards.getList(); 
            if (cards != null) {
        %>
            <div class="box">
            <h1>Unlink Opal card</h1>
            <table>
                <thead>
                    <th>Card Type</th>
                    <th>Opal Number</th>
                    <th>Balance</th>
                    <th>&nbsp;</th>
                </thead>
        <%
            for (OpalCard card: cards) {
                String imgURL = "";
                String type = card.getType();
                if (type.equalsIgnoreCase("Child")) {
                    imgURL = "image/card_child_large.png";
                }
                else if (type.equalsIgnoreCase("Adult")) {
                    imgURL = "image/card_adult_large.png";
                }
                else if (type.equalsIgnoreCase("Senior")) {
                    imgURL = "image/card_pensioner_large.png";
                }
                else if (type.equalsIgnoreCase("Concession")) {
                    imgURL = "image/card_concession_large.png";
                }
                
        %>        
                    <tr>
                        <td><img src=<%=imgURL%> width="30px">&ensp;&ensp;<%=type%></td>
                        <td><%=card.getOpalID()%></td>
                        <td>$<%=card.getBalance()%></td>
                        <td>
                            <form method='POST' action='unlinkCard.jsp'>
                                <input type="hidden" value="<%=card.getOpalID()%>" name="opalID">
                                <input type="Submit" value="Unlink" name="unlink" onClick="return confirm('Are you sure?');">
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
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
