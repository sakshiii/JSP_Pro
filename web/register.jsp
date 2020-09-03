<%-- 
    Document   : register
    Created on : Aug 14, 2019, 5:22:14 PM
    Author     : lenovo
--%>
<%@page import= "com.sakshi.UserDao "%>
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
            {
                out.println("succesfully registered");
            }
            else
            {
                out.println("Not registered succesfully!! try again ");
                
            }
            
        %>
    </body>
</html>
