<%-- 
    Document   : orderOpalCard
    Created on : 07/08/2019, 3:15:36 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.User"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/chooseOpalCard.css">
        <title>Choose Opal Card</title>
    </head>
    <body>
        <div class = "clearfix">
            <%
                if(user==null){
            %>
            <form method = "post" action = "contactDetail.jsp" >
            <%
                }
                if(user!=null){
            %>
            <form method = "post" action = "paymentDetail.jsp" >
            <%
                }
            %>
            <h3>&nbsp;&ensp;Choose an Opal card:</h3>
            <div class = "box">
                <img src = "./image/card_adult_large.png">
                &nbsp;
                <h5>Adult</h5>
                <p>if you're 16 years of age, or older, and normally 
                     pay full fare</p>
                <input type = "submit" value = "order" name = "adult">
            </div>
            <div class = "box">
                <img src = "./image/card_child_large.png">
                &nbsp;
                <h5>Child/Youth</h5>
                <p>if you're aged 4-15 years old, or a full 
                    time NSW/ACT school student aged 16 years 
                    or older</p>
                <input type = "submit" value = "order" name = "child">
            </div>
            
            <div class = "box">
                <img src = "./image/card_pensioner_large.png">
                &nbsp;
                <h5>Pensioner</h5>
                <p>for eligible NSW seniors, interstate 
                    seniors, pensioners and asylum seekers</p>
                <input type = "submit" value = "order" name = "pensioner">
            </div>
            
            <div class = "box">
                <img src = "./image/card_concession_large.png">
                &nbsp;
                <h5>Concession</h5>
                <p>for eligible tertiary students, apprentices 
                    and trainees, job seekers and Centrelink 
                    customers</p>
                <input type = "submit" value = "order" name = "concession">
            </div>
        </div>
    </body>
</html>
