<%-- 
    Document   : accessManager
    Created on : 01/09/2019, 8:33:33 AM
    Author     : kevin
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
        <link rel="stylesheet" href="./css/aManger.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Access manager</title>
    </head>
    <body>
         <%
           String adminemail = (String)session.getAttribute("adminemail");
           String adminpass = (String)session.getAttribute("adminpassword");
           MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
           Times dbTimes = new Times();
          ArrayList<Time> times = new ArrayList<Time>();
         %>

         <div class="searchT">
             <form  method="POST">
                <input type="date" name="date">   
                <input type="text" name="email"> 
                <button value ="searchT" name="searchT"type="submit"><i class="fa fa-search"></i></button>
              </form>
          </div>


       <div class ="title">
         <h1>Opal Cards</h1>
       </div>
          <div class="table"> 
            <table>
                <thead>
                    <th>User</th>
                    <th>Login Time</th>
                    <th>Logout Time</th>
                </thead>
        <%
            if(request.getParameter("searchT") == null)
            {
                dbTimes = connector.loadTimes();
                times = dbTimes.getList(); 
%>        
        <%}else{
                if (request.getParameter("date") != null && request.getParameter("email") == null){
                        String loginD = request.getParameter("date");
                        dbTimes = connector.findTimes(loginD);
                        times = dbTimes.getList(); 
                    }
                    else if (request.getParameter("date") == null && request.getParameter("email") != null){
                        String email = request.getParameter("email");
                        dbTimes = connector.loadUserTimes(email);
                        times = dbTimes.getList(); 
                    }
                    else if (request.getParameter("date") != null && request.getParameter("email") != null){
                        String loginD = request.getParameter("date");
                        String email = request.getParameter("email");
                        dbTimes = connector.userSearchTimes(email,loginD);
                        times = dbTimes.getList(); 
                    }else{
                        dbTimes = connector.loadTimes();
                        times = dbTimes.getList();
                    }    
               }%>

  <%for (Time time: times){%>        
    <tr>
        <td><%=time.getCustomerID()%></td>
        <td><%=time.getLoginT()%></td>
        <td><%=time.getLogoutT()%> </td>
            <form  method="POST">
                <td width="10%"><input type="submit"  onclick="refresh()" value="delete" name="Remove" ></td>
                <input type="hidden" id="loginT" name="loginT" value= <%=time.getloginID()%> >
            </form>       

    </tr>
                    <%}%>
            </table>
            </div>
                <% if(request.getParameter("Remove")!=null)
             {  
                 String loginT = request.getParameter("loginT") ;     
                 connector.removeTime(loginT);%><%--delete the databse entry withe the specific info --%>
             <%}%> 
             <script>
                 function refresh(){
                 location.reload();
             }</script>
    </body>
</html>