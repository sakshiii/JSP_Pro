<%-- 
    Document   : result
    Created on : Mar 16, 2019, 12:37:41 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           int mark =(Integer) session.getAttribute("marks");
            out.println(mark);
           if(mark>=4)
                    {
                        out.print("congratulations!! quite a nerd huh");
                    }
            else
            {
                out.println("sorry you didnt pass the test");
            }
        %>
    </body>
</html>
