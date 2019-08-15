<%-- 
    Document   : linkCard
    Created on : 14/08/2019, 2:37:38 PM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/linkCard.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Link existing Opal card to account</h2>
        <div class="cardDetails">
            <form method = "POST" action = "card.jsp" >
                <table>
                    <tr><td colspan="3">Opal card number</td></tr>
                    <tr>
                        <td>
                            <input type ="text" name = "ID1" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID2" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID3" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID4" minlength="4" maxlength="4" required>
                        </td>
                    </tr>
                    <tr><td>Security code</td></tr>
                    <tr><td><input type ="text" name = "securityCode" minlength="4" maxlength="4" required></td></tr>
                    <tr><td><input type ="submit" value = "Link" name="link"></td></tr>
                </table>
            </form>
        </div>
        <%!
            public String valid(String in1, String in2, 
                                String in3, String in4, String in5){
                String error = "";
                String input = in1 + in2 + in3 + in4 + in5;
                try{
                    int test = Integer.parseInt(input);
                }
                catch (NumberFormatException ex){
                    error = "Invalid";
                }
                return error;
            }
        
        %>
        <%
            if (request.getParameter("link") != null){
                String ID1 = request.getParameter("ID1");
                String ID2 = request.getParameter("ID2");
                String ID3 = request.getParameter("ID3");
                String ID4 = request.getParameter("ID4");
                String sc = request.getParameter("securityCode");
                String valid = valid(ID1, ID2, ID3, ID4, sc);
                if (valid.equalsIgnoreCase("Invalid")){
                    %>
                    <script>
                        alert("Invalid input");
                    </script>
                    <%
                }
            }
        %>
    </body>
</html>
