<%-- 
    Document   : transferDetail
    Created on : 08/09/2019, 1:05:00 AM
    Author     : Michelle
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/transferBalance.css">
        <title>Transfer Balance Confirmation</title>
    </head>
    <body>
        <h2>Transfer Balance</h2>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            if (request.getParameter("Next") != null) {
            TransferBalance record = (TransferBalance) session.getAttribute("record");
            double value = Double.parseDouble(request.getParameter("value"));
            TransferBalance newRecord = new TransferBalance(record.getFromOpalID(), record.getToOpalID(), value, record.getCustomerID());
            session.removeAttribute("record");
            session.setAttribute("newRecord", newRecord);
        %>
        <div class="box">
            <table>
                <h6>Confirmation</h6>
                <tr>
                    <td><b>From</b></td>
                    <td>: <%=newRecord.getFromOpalID()%></td>
                </tr>
                <tr>
                    <td><b>To</b></td>
                    <td>: <%=newRecord.getToOpalID()%></td>
                </tr>
                <tr>
                    <td><b>Value</b></td>
                    <td>: $<%=newRecord.getValue()%></td>
                </tr>
            </table>
                <!--<button onclick=location.href="main.jsp">Cancel</button>-->
                <form method="POST" action="transferConfirmation.jsp">
                    <input type="submit" value="Cancel" name="Cancel">
                </form>
                <form method="POST" action="transferConfirmation.jsp">
                    <input type="submit" value="Confirm" name="Confirm">
                </form>
                <form method="POST" action="transferConfirmation.jsp">
                    <input type="submit" value="Edit" name="Edit">
                </form>
        </div>
                <%
                } else if (request.getParameter("Confirm") != null) {
                    TransferBalance confirmTransfer = (TransferBalance) session.getAttribute("newRecord");
                    connector.transferBalance(confirmTransfer);
                %>
                <div class="message">
                    <p>Transfer Balance from <%=confirmTransfer.getFromOpalID()%> to <%=confirmTransfer.getToOpalID()%> is success!</p>
                    <button onclick=location.href="main.jsp">Back to Main Page</button>

                </div>
                <%
                } else if (request.getParameter("Cancel") != null) {
                    TransferBalance cancelTransfer = (TransferBalance) session.getAttribute("newRecord");
                %>
                <div class="message">
                    <p>Transfer Balance from <%=cancelTransfer.getFromOpalID()%> to <%=cancelTransfer.getToOpalID()%> has been cancelled!</p>
                    <button onclick=location.href="main.jsp">Back to Main Page</button>
                </div>
                <%
                    session.removeAttribute("cancelTransfer");
                } else if (request.getParameter("Edit") != null) {
                    TransferBalance editTransfer = (TransferBalance) session.getAttribute("newRecord");
                %>
                <div class="box">
                    
                </div>
                <%
                    }
                %>
    </body>
</html>
