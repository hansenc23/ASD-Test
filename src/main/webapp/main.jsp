<%-- 
    Document   : main.jsp
    Created on : 14/08/2019, 11:13:01 PM
    Author     : hanse
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/card.css">
        <title>Home Page</title>
    </head>
    <body>
        
        <%
            //User user = (User)session.getAttribute("user");
            MongoDBConnector connector = new MongoDBConnector();           
            //Add paymentmethod to user 
            if(user != null){
                if (request.getParameter("firstname") != null){
                    String firstname = request.getParameter("firstname");
                    String lastname = request.getParameter("lastname");
                    String cardnumber = request.getParameter("cardnumber");
                    int expiryMonth = Integer.parseInt(request.getParameter("expiryMonth"));
                    int expiryYear = Integer.parseInt(request.getParameter("expiryYear"));
                    int cvv = Integer.parseInt(request.getParameter("cvv"));
                    Paymentmethod paymt = new Paymentmethod(firstname,lastname,cardnumber,expiryMonth,expiryYear,cvv);
                    connector.addPayment(paymt, user);
                }

                ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
                // Get the user's list of linked Opal card(s)
                cards = connector.getOpalCards(user);
                // If the user's card list is not empty
                if (!cards.isEmpty()) {
        %>
                    <div class="container">
                        <div class="box">
                        <h1>Linked Opal Cards</h1>
                        <table>
                            <thead>
                            <th colspan="2">Opal Cards</th>
                                <th>&nbsp;</th>
                            </thead>
        <%
                    if (request.getParameter("opalID") != null) {
                        OpalCard selectedCard = connector.getCardDetails(request.getParameter("opalID"));
                        String imgURL = "";
                        String cardType = selectedCard.getType();
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
                            <td><img src=<%=imgURL%> width="30px"> &nbsp; &nbsp; <%=selectedCard.getOpalID()%></td>
                            <td>
                                <form method='POST' action='cardDetail.jsp'>
                                    <input type="hidden" value="<%=selectedCard.getOpalID()%>" name="opalID">
                                    <input type="Submit" value="Details">
                                </form>
                            </td>
                        </tr>
        <%
                        } else {
                        // For each card, print card type, opal Id and details button
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
                                <td><img src=<%=imgURL%> width="30px"> &nbsp; &nbsp; <%=card.getOpalID()%></td>
                                <td>
                                    <form method='POST' action='cardDetail.jsp'>
                                        <input type="hidden" value="<%=card.getOpalID()%>" name="opalID">
                                        <input type="Submit" value="Details">
                                    </form>
                                </td>
                            </tr>
        <%
                        }  
                    }
        %>
                        </table>
                    </div>
                    <div class="searchBox">
                        <h3>Search Opal Card</h3>
                        <h6>Choose an Opal card number</h6>
                        <form action="main.jsp" method="POST">
                            <select id="searchID" name = "opalID" required>
        <%
                                String opalID = "";
                                for (OpalCard card: cards) {
                                    opalID = card.getOpalID();
        %>
                            <option value = "<%=opalID%>" ><%=opalID%></option>
        <%
                                }
        %>
                            </select>
                            <br>
                            <input type="submit" value="Search" name="Search">
                        </form>
                    </div>
                </div>
        <%
                }
                // If user's card list is empty
                else {
        %>
                    <div class="unlinkBox">    
                        <h2>Welcome to Opal Card Management website!</h2>
                    </div>
        <%
                }
            }
        %>
    </body>
</html>