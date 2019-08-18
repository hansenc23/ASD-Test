<%-- 
    Document   : main.jsp
    Created on : 14/08/2019, 11:13:01 PM
    Author     : hanse
--%>

<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <link rel="stylesheet" href="./css/style.css"/>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
</head>
<body>
    <header>
        <div class="logo-container">
            <a href="index.jsp"><img src="./img/opal-logo.png" alt="logo"/></a>
        </div>
        <nav>
            <ul class="nav-links">
                <li><a class="nav-link" href="#">Opal News</a></li>
                <li><a class="nav-link" href="#">Get an Opal Card</a></li>
                <li><a class="nav-link" href="#">FAQs</a></li>
                
            </ul>
            
        </nav>
        <div class="reg">
            <ul class="reg-links">
                <li><a class="nav-link" href="login.jsp">Login</a></li>
                <li><a class="nav-link" href="register.jsp">Register</a></li>
            </ul>
            
        </div>
    </header>
</body>
</html>
=======
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
            User user = (User)session.getAttribute("user");
            
            //Add paymentmethod to user 
            if (request.getParameter("firstname") != null){
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String cardnumber = request.getParameter("cardnumber");
        String expiryMonth = request.getParameter("expiryMonth");
        String expiryYear = request.getParameter("expiryYear");
        String cvv = request.getParameter("cvv");
        Paymentmethod paymt = new Paymentmethod(firstname,lastname,cardnumber,expiryMonth,expiryYear,cvv);
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
        connector.addPayment(paymt, user);
        }
            
            String opalID = request.getParameter("ID1") + " " + request.getParameter("ID2") + " "
                          + request.getParameter("ID3") + " " +request.getParameter("ID4");
            String securityCode = request.getParameter("securityCode");
            double balance = 0.00;
            String type = "Adult";
            
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            if (securityCode != null) {
                OpalCard card = new OpalCard(opalID, balance, type, securityCode);
                session.setAttribute("card", card);

                connector.add(card, user);
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

>>>>>>> a36a79820da9b9c77014c338aedbbba8719aee1c
