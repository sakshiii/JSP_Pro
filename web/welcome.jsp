<%-- 
    Document   : welcome
    Created on : Mar 13, 2019, 1:33:58 PM
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
        <h1>Welcome to THe World!</h1>
        LOGIN SUCCESSFUL :)
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
        %>
        
        <form action="job_post.jsp" method="post">
            
            <input type="submit" value="Driver Job Post">
            
        </form>
        <form action="dri_lic_tst.jsp" method="post">
            
            <input type="submit" value="Driver License Test">
            
        </form>
        <%
                int a=Integer.parseInt(request.getParameter("age"));
                if(a>=25)
                {
                    out.print("congratulations you are eligible ::)");
                }
                else{
        %>
        <jsp:forward page="not_eli.jsp"></jsp:forward>
        <%
                    out.print("sorry :(");
                }
        %>
    </body>
</html>
