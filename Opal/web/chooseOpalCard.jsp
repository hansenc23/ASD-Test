<%-- 
    Document   : orderOpalCard
    Created on : 07/08/2019, 3:15:36 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/chooseOpalCard.css">
        <title>Choose Opal Card</title>
    </head>
    <body>
        <div class = "clearfix">
            <h3>&nbsp;&ensp;Choose an Opal card:</h3>
            <div class = "box">
                <img src = "./image/card_adult_large.png">
                <h3>Adult</h3>
                <p>if you're 16 years of age, or older, and normally 
                     pay full fare</p>
                <a class = "button" href = "orderDetail.jsp">order</a>
            </div>
            
            <div class = "box">
                <img src = "./image/card_child_large.png">
                <h3>Child/Youth</h3>
                <p>if you're aged 4-15 years old, or a full 
                    time NSW/ACT school student aged 16 years 
                    or older</p>
                <a class = "button" href = "orderDetail.jsp">order</a>
            </div>
            
            <div class = "box">
                <img src = "./image/card_pensioner_large.png">
                <h3>Pensioner</h3>
                <p>for eligible NSW seniors, interstate 
                    seniors, pensioners and asylum seekers</p>
                <a class = "button" href = "orderDetail.jsp">order</a>
            </div>
            
            <div class = "box">
                <img src = "./image/card_concession_large.png">
                <h3>Concession</h3>
                <p>for eligible tertiary students, apprentices 
                    and trainees, job seekers and Centrelink 
                    customers</p>
                <a class = "button" href = "orderDetail.jsp">order</a>
            </div>
        </div>
    </body>
</html>
