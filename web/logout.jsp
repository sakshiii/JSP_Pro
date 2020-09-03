<%-- 
    Document   : logout
    Created on : Mar 13, 2019, 1:27:19 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT Page</title>
    </head>
    <body>
        <h1>LOGOUT SUCCESSFUL :)</h1>
        <%
            request.removeAttribute("nm");
            session.invalidate();
        %>
    </body>
</html>
