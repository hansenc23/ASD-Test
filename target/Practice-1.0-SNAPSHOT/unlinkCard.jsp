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
           //User user = (User)session.getAttribute("user");
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
