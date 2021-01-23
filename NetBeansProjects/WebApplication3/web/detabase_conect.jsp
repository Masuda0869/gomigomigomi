<%-- 
    Document   : detabase_conect
    Created on : 2020/07/18, 23:47:10
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection
                    conn = DriverManager.getConnection("jdbc:mysql:localhost/phpmyadmin/sql.php?" + "db=mysql&table=test");
                    Statement st = conn.createStatement();
                    ResultSet res = st.executeQuery("select * from test");
                    
                    while(res.next()){
                        out.println(res.getString("id."));
                    }
                    st.close();
                    conn.close();
        %>
    </body>
</html>
