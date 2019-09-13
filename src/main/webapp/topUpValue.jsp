<%-- 
    Document   : topUpValue
    Created on : 07/08/2019, 6:55:51 PM
    Author     : hieu
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>

<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./css/topUp.css">
        <title>Top Up Payment Detail</title>
    </head>
    <body>
        
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
       
                
                //get the user email and password from user session
        
                //assign the customerID as user ID
            //add the customer id to new session
            ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
            // Get the user's list of linked Opal card(s)
            cards = connector.getOpalCards(user);
            session.setAttribute("topUpCards", cards);
            
        %>
        <div class="h3">
        <h3>Add value to your Opal Card</h3>
        </div>
        <div class = "topup">        
            <form method = "post" action = "topUpCard.jsp" >
                <table>
                    <tr><td>Top up amount</td><td><select id="topUpValue_amount" name = "amount" required>
                                <option value = "10.00">$10.00</option>
                                <option value = "15.00">$15.00</option>
                                <option value = "30.00">$30.00</option>
                                <option value = "50.00">$50.00</option>
                            </select></td></tr>
                    <tr><td>Opal card</td><td><select id="topUpValue_cardNumber" name="cardNumber" required/>
                            <%
                              if (cards.isEmpty()) {
                                 %>
                                 <option value ="noCard"> No cards added yet</option>
                                 <%
                             } else {
                                 for (OpalCard card: cards) {
                                 %>
                                 <option value="<%=card.getOpalID()%>"><%=card.getOpalID()%>  (current value: <%= card.getBalance()%>)</option>
                                 <%
                                 }
}   
                                %>
                        
                        </td>
                       
                    </tr>
                    <tr>
       
                        <td align = "right"><input id="topUpValue_submit" type =  "submit" value = "Continue"></td>
                    <td><a class = "button" href = "main.jsp">Cancel</a></tr>                
                </table>
                </form>
            </form>
        </div>
    </body>
</html>

