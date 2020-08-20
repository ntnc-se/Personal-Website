<%-- 
    Document   : Blog_Searched
    Created on : Jul 15, 2020, 12:19:36 PM
    Author     : __ntnc__ 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>__ntnc__</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha3840iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/Searched.css">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            @keyframes slideInFromLeft {
                0% {
                    transform: translateX(-100%);
                }
                100% {
                    transform: translateX(0);
                }
            }

            @keyframes slideInFromDown {
                0% {
                    transform: translateY(100%);
                }
                100% {
                    transform: translateY(0);
                }
            }
        </style>
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav style="padding-bottom: 3%;">
                <a href="view/About_Me.jsp">About me</a>
                <a href="/ntnc/list">Blog</a>
                <a href="view/Travel.jsp">Travel</a>
                <a href="view/Work.jsp">Work</a>
                <a href="view/Home.jsp">Home</a>
            </nav>
            <%
                int count = 0;
                if (request.getAttribute("data") != null) {
                    ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("data");
                    count = list.size();
                    if (count == 0) {
            %>
            <h3 style="margin-left: 40%;
                margin-top: 10%;
                margin-bottom: 10%;">No posts were found !</h3>
            <%} else {%>
            <h3 style="margin-left: 11%;
                margin-top: 3%;
                animation: 1.5s ease-out 0s 1 slideInFromLeft;">Results found: <%=count%></h3>
            <%}%>
            <%
                for (int i = 0; i < list.size(); i++) {
                    Post p = list.get(i);
                    String description = p.getDescription();
                    int id = p.getId();
            %>
            <div class="test" style="
                 padding-top: 3%;
                 transform-origin: center;
                 transition: 0.8s;
                 padding-bottom: 1%;
                 margin-left: 36%; 
                 margin-bottom: 1%;
                 margin-top: 1%;
                 animation: 0.5s ease-out 0.5s 1 slideInFromDown;"><%=description%>
                <!--<form action="" method="post"><input type="submit" value="See more"></form>-->
                <a href ="Content_Blog.jsp?id=<%=id%>">See more...</a>
            </div>
            <%
                }
            %>
            <%}else{%>
            <p>No posts were found.</p>
            <%}%>

        </main>  

        <footer class="footer">
            <!--            <p>
                            This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit
                            <a href="http://www.intro-webdesign.com">Intro to Web Design</a>
                        </p>-->
            <br/>
            <hr style="border: 1px solid grey;">
            <a  href="https://twitter.com/ChuongThuc" target="_blank"><img alt="Twitter icon" src="images/Home/twitter.png" class="icons"></a>
            <a  href="https://www.instagram.com/__chowng__/" target="_blank"><img alt="Instagram icon" src="images/Home/instagram.png" class="icons"></a>
            <a  href="mailto:chuongntnhe141612@fpt.edu.vn" target="_blank"><img alt="Gmail icon" src="images/Home/gmail.png" class="icons"></a>
            <a  href="https://www.linkedin.com/in/chuong-nguyen-4238ab187/" target="_blank"><img alt="Linkedin icon" src="images/Home/linkedin.png" class="icons"></a>
            <a  href="https://www.facebook.com/iamntnc" target="_blank"><img alt="Facebook icon" src="images/Home/facebook.png" class="icons"></a>
            <p style="text-align: left;padding: 5px;">         
                + Phone: 0916 898 775<br/>
                + Address: FPT University, Hoa Lac, Hoa Son Binh, Vietnam<br/>
                + Mail: ntnc.2k@gmail.com
            </p>
            <p style="text-align: center;">
                Copyright &copy; 2020 All Rights Reserved by NTNC.
            </p>
        </footer>
    </body>
</html>
