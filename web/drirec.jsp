<%-- 
    Document   : drirec
    Created on : Mar 13, 2019, 9:37:44 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
           body
            {
                 /*background-image: url(img/train-goodbye-smiley-emoticon.gif);
                 background-size: 100% 100%;*/
            }
            html{
                height: 100%;
            }
               
        </style>
    </head>
    <body>
        <h1>Hello Driver World!</h1>
            
            
        <h1><%
                String n=request.getParameter("uname");
                out.print("welcome " +n);
                %></h1>
            <p>
                Driver recruitment advertising is about creating compelling, effective campaigns in an effort to hire the most qualified truck drivers and reach your hiring goals, right? <br>Yes, but it's also about tracking the right metrics and figuring out what exactly is (or isn't) working, so you can enhance your strategy. When you have this knowledge at your fingertips, you can continue to improve your recruitment plan.
            </p>
            If you want to check your ability then go back and give a preparation test:)
            
    </body>
</html>
