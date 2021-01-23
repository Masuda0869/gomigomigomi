<%-- 
    Document   : gomi
    Created on : 2021/01/13, 16:53:50
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%
        request.setCharacterEncoding("UTF-8");
        String text = request.getParameter("text");
    %>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%=text%>
    </body>
</html>
