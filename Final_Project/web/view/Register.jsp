<%-- 
    Document   : Register
    Created on : Jun 15, 2020, 10:38:03 AM
    Author     : __ntnc__ 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>__ntnc__</title>
        <style>
            input{
                width: 25%;
                height: 35px;
                margin-left: 40%;
                margin-top: 25px;      
            }   
            form{
                margin-top: 5%;
            }
            h1{
                margin-left: 44%;
                margin-top: 6%;
            }
            h3{
                margin-left: 44%;
            }
            body{
                margin: 0;
                background-image: url('../images/register.jpg');       
                background-position:  top;
                background-repeat: no-repeat;
                background-size: cover;
                opacity: 0.8;
            }
        </style>
    </head>
    <body>
        <h1>Register Account</h1>
        <form action="/ntnc/register" method="post">
            <input type="text" name="username"  placeholder="Enter Username" required="">
            <input type="text" name="password"  placeholder="Enter Password" required="">
            <input type="submit" value="Register"/>
        </form> <br/>
        <%
            if (request.getAttribute("error") != null) {
        %>
        <h3 style="color: red">This Username is existed !</h3>
        <%
            }
        %>
    </body>
</html>
