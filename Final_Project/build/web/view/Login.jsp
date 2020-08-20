<%-- 
    Document   : Login
    Created on : Jun 11, 2020, 10:49:47 AM
    Author     : __ntnc__ 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>__ntnc__</title>
        <!--        frame work-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
        <style>
            body{
                margin: 0;
                background-image: url('../images/background.jpg');       
                background-position:  center;
                background-repeat: no-repeat;
                background-size: cover;
                opacity: 0.8;
            }
            #top{
                width: 25%;
                height: 35px;
                margin-left: 40%;
                margin-top: 25px;      
            }   
            form{
                margin-top: 12%;
            }
            button{
                margin-left: 40%;
                width: 8%;
                height: 30px;
                margin-top: 50px;
            }
            p{
                text-align: center;
                font-size: 20px;
            }
            h3{
                margin-left: 41%;  
            }
            a{
                text-decoration: none;
                color: black;
            }
            #check{
                margin-top: 10px;
                margin-left: 40%;
            }
        </style>
    </head>
    
<!--    note:
    trang cho client: chỉ có xem bài đăng, comment
    - trang chính có các mục bài đăng gồm ảnh và description, khi
    người dùng nhấn vào thì ra bài detail, kiểu post.details, post.name, post.content
    - (làm đc thì làm)chức năng comment post, insert vào database
    - có search bài đăng
    trang cho admin:
    - list tất cả các bài viết, có thêm, xóa, sửa, thống kê, search
    xem bài jdbc để biết chi tiết phần core cần làm những gì

    - khi muốn hiển thị cả ảnh lẫn text thì insert vào database cả thẻ tag cả text
    kiểu text để lưu database: ntext
-->

    <body>
        <%
            Cookie[] listCookie = request.getCookies();
            String username = "";
            String password = "";
            String remember = "";
            int i = 0;
            if (listCookie != null) {
                while (i < listCookie.length) {
                    if (listCookie[i].getName().equals("username")) {
                        username = listCookie[i].getValue();
                    }
                    if (listCookie[i].getName().equals("password")) {
                        password = listCookie[i].getValue();
                    }
                    if (listCookie[i].getName().equals("remember")) {
                        remember = listCookie[i].getValue();
                    }
                    i++;
                }

            }
        %>
<!--        <h3 style="color: red">${requestScope.message}</h3>-->
        <form action="/ntnc/login" method="POST">      
            <div>
                <input id="top" type="text" name="username"  placeholder="Enter Username" required="">
            </div>     
            <div>
                <input id="top" type="text" name="password"  placeholder="Enter Password" required="">
            </div>
            <input id="check" type="checkbox" name="remember" value="ON" <%="ON".equals(remember) ? "checked='checked'" : ""%>>Remember me<br/>
            <div id="log">
                <button>Sign In</button>
            </div>
            <h3><a href="Register.jsp">Register</a></h3>
        </form>
        <%
            if (request.getAttribute("message") != null) {
        %>
        <p style="color:red"> Login Failed, Please try again ! </p>
        <%
            }
        %>
    </body>
</html>
