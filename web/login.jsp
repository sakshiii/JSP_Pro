<%-- 
    Document   : login
    Created on : Mar 13, 2019, 10:59:09 AM
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
        <form action="logout.jsp" method="post">
            <input type="submit" value="logout">
        </form>
        <%
            String fn=request.getParameter("fname");
          if(fn!=null)
          {
            String un=request.getParameter("un");
            String p=request.getParameter("pa");
            if(p.equals('123'))
             out.println("Login Successful :)");
          }
          else
          {
              out.println("First Register!!");
          }
        %>
        <jsp:include page="welcome.jsp"></jsp:include>
                
    </body>
</html>
