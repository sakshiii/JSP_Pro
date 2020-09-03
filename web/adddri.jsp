<%-- 
    Document   : adddri
    Created on : Apr 20, 2019, 12:27:42 AM
    Author     : lenovo
--%>
<%@page import="com.sakshi.UserDao"%>
<jsp:useBean id="u" class="com.sakshi.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int i=UserDao.save(u);
            if(i>0)
                out.println("yeah");
            else
                out.println("noo");
        %>
    </body>
</html>
