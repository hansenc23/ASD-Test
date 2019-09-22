<%-- 
    Document   : createArticle
    Created on : Sep 20, 2019, 5:13:35 AM
    Author     : Hieu
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/topUp.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Create Article</title>
    </head>

    <body>     
     <%
            MongoDBConnector conn = new MongoDBConnector();
            ArrayList<Article>  arts = conn.getArticles();
            if (!arts.isEmpty()){
            for(Article art: arts){
                %>
                <div class = "topup">
            <form method = "post"  action = "articleUpdate.jsp">
                <table>
                 
                    <tr>
                        <td><h4><%=art.getArticleName()%> <p>(<%= art.getArticleDate()%>)</p></h4></td>
                    </tr>
                    <tr>
                        <td><p><%=art.getArticleContent()%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name = "id" name="<%=art.getArticleID()%>" value="<%= art.getArticleID() %>"style="display:none"/>
                        </td>
                    </tr>
                </table>      
            </form>
        </div>
                
                <%
              }
            }
        %>
    </body>
</html>
