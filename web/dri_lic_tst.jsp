<%-- 
    Document   : dri_lic_tst
    Created on : Mar 13, 2019, 11:13:44 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DRIVER LICENSE TEST :-)</title>
    </head>
    <body>
        <h1>ARE YOU READY FOR THE TEST?</h1>
        <jsp:include page="drirec.jsp"></jsp:include>
        <br>
        <%
            String m=request.getParameter("nm");
            out.println(m+",ready for the test??");
            out.println("Enter the details below:");
        %>
        <form action="test.jsp" method="post">
            
           
            Enter your city:<input type="text" name="city">
            <input type="submit" value="go">
            
            
        </form>
    </body>
</html>
