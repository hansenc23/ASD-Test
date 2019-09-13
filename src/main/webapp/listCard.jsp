<%-- 
    Document   : listCard
    Created on : 27/08/2019, 2:52:23 PM
    Author     : Michelle
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/card.css">
        <title>List Card Page</title>
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();

            // Get all Opal cards from DB
            ArrayList<OpalCard> cards = new ArrayList<OpalCard>(); 
            cards = connector.showAllCards();
        %>    
        <div class="unlinkBox" style="max-width: 50%">
            <h1>Opal Cards</h1>
            <h6><strong><%=cards.size()%></strong>&nbsp;Opal Cards</h6>
            <table>
                <thead>
                    <th>Card Type</th>
                    <th>Opal Card Number</th>
                    <th>&nbsp;</th>
                </thead>
        <%
            for (OpalCard card: cards) {
                // Get the matching opal card image
                String imgURL = "";
                String type = card.getType();
                if (type.equalsIgnoreCase("Child"))         imgURL = "image/card_child_large.png";
                else if (type.equalsIgnoreCase("Adult"))    imgURL = "image/card_adult_large.png";
                else if (type.equalsIgnoreCase("Senior"))   imgURL = "image/card_pensioner_large.png";
                else if (type.equalsIgnoreCase("Concession")) imgURL = "image/card_concession_large.png";
                
        %>        
                    <tr>
                        <td><img src=<%=imgURL%> width="30px">&ensp;&ensp;<%=type%></td>
                        <td><%=card.getOpalID()%></td>
                        <td>
                            <form method='POST' action='adminCardDetail.jsp'>
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
    </body>
</html>
