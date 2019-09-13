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
            MongoDBConnector connector = new MongoDBConnector();
            
            // If unlink button is clicked, remove card from the user's account
            if (request.getParameter("unlink") != null){
                OpalCard removedCard = new OpalCard(request.getParameter("opalID"));
                connector.unlinkCard(removedCard, user);
            }
            
            ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
            cards = connector.getOpalCards(user);
            // If the user has Opal card(s)
            if (!cards.isEmpty()) {
        %>
                <div class="unlinkBox">
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
            // If the user does not has an Opal cars
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
