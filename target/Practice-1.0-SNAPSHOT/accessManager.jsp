<%-- 
    Document   : accessManager
    Created on : 01/09/2019, 8:33:33 AM
    Author     : kevin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="adminNavbar.jsp" %>
<%//@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <button value ="searchT" name="searchT"type="submit"><i class="fa fa-search"></i></button>
              </form>
          </div>
    <%String loginL = request.getParameter("date");%>
         <p><%=loginL%></p>
         <h1>Opal Cards</h1>
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
            
                for (Time time: times)
                {
        %>        
                    <tr>
                        <td><%=time.getCustomerID()%></td>
                        <td><%=time.getLoginT()%></td>
                        <td><%=time.getLogoutT()%></td>
                         <td width="10%"><input type="submit" value="delete" name="delete" ></td>
               <input type="hidden" id="loginT" name="loginT" value= <%=time.getloginID()%> >
                    </tr>
        <%
                }
        }
                  else{

                    String loginD = request.getParameter("date");
                    dbTimes = connector.findTimes(loginD);
                    times = dbTimes.getList(); 
                    
                     for (Time time: times){
        %>
                  <tr>
                        <td><%=time.getCustomerID()%></td>
                        <td><%=time.getLoginT()%></td>
                        <td><%=time.getLogoutT()%></td>
                        <td width="10%"><input type="submit" onclick="refresh()" value="delete" name="delete" ></td>
               <input type="hidden" id="loginT" name="loginT" value= <%=time.getloginID()%> >
                    </tr>
              <script>function refresh(){
                 location.reload();
             }</script>
                    
                    <%  }
                    }%>
            </table>
            <% if(request.getParameter("delete")!=null)
             {  
                 
                  String loginT = request.getParameter("loginT") ;     
                 connector.removeTime(loginT);%><%--delete the databse entry withe the specific info --%>
                 
             <%}%>
            
    </body>
</html>
