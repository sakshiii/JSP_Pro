<%-- 
    Document   : eval
    Created on : Mar 16, 2019, 12:14:48 PM
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
        <h1>evaluation here!</h1>
        <%
            
              int marks=0;
            String s1 = request.getParameter("a1");
            System.out.print(s1);
            if(s1.equals("A"));
            marks++;
            String s2=request.getParameter("a2");
          if(s2.equals("C"));
           marks++;
            String s3=(request.getParameter("a3"));
           if(s3.equals("B"));
            marks++;
            String s4=(request.getParameter("a4"));
            if(s4.equals("A"));
            marks++;
            String s5=(request.getParameter("a5"));
            if(s5.equals("B"));
            marks++;
            String s6=(request.getParameter("a6"));
            if(s6.equals("C"));
            marks++; 
            
           u.setMarks(marks);
            //session.setAttribute("marks",);
        %>
        
                <% int i=UserDao.save(u);
       
            if(i>0)
            {
                response.sendRedirect("success.jsp");
                
            }
            else
            {
                response.sendRedirect("error.jsp");
                
            }
            
        %>
        
        
        <jsp:include page="result.jsp"></jsp:include>
    </body>
</html>
