<%-- 
    Document   : Blog
    Created on : Jun 18, 2020, 9:18:35 AM
    Author     : __ntnc__ 
--%>

<%@page import="model.View"%>
<%@page import="dal.ViewDAO"%>
<%@page import="dal.PostDAO"%>
<%@page import="model.Post"%>
<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" type="text/css" href="css/Blog.css">
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

            @keyframes slideInFromRight {
                0% {
                    transform: translateX(100%);
                }
                100% {
                    transform: translateX(-100);
                }
            }

            .icons:hover{  
                transform: scale(1.3);
                transform-origin: center;
                transition: 0.8s;    
            }
            
            .icons{
                transition:  transform .5s ease;
            }

            .test:hover{
                transform: scale(1.1);
                transform-origin: center;
                transition: 0.5s;
            }
            
            .test{
                transition:  transform .5s ease;
            }

            .pagination {
                display: inline-block;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 20% 20px;
                text-decoration: none;
                margin-left: 1200%;
            }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: #51d0de;
            }

            .searchtext:hover{
                transform: scale(1.3);
                transform-origin: center;
                transition: 0.5s;
            }
            
            .searchtext{
                transition:  transform .5s ease;
            }

            .search:hover{
                background-color: #51d0de;
                transition: 0.8s;
            }

            #scroll-btn{
                background-color: #51d0de;
                border: medium none;
                border-radius: 30px;
                bottom: 40px;
                color: white;
                cursor: pointer;
                display: none;
                outline: medium none;
                padding: 1px 13px 3px 13px;
                position: fixed;
                right: 30px;
                z-index: 100;
                font-size: 35px;
                transition: 0.5s;
            }
        </style>
    </head>
    <body>
        <header>
            <p style="animation: 1s ease-out 0s 1 slideInFromLeft;" class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav style="animation: 1s ease-out 0s 1 slideInFromRight;">
                <a href="view/About_Me.jsp">About me</a>
                <a href="">Blog</a>
                <a href="/ntnc/list_album">Travel</a>
                <a href="view/Work.jsp">Work</a>
                <a href="view/Home.jsp">Home</a>
            </nav>
            <!--            content here-->
            <!--            use some nice footer template-->
            <br/><br/><br/>
            <%
//                if (request.getAttribute("data") != null) {
//                    ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("data");

                PostDAO pd = new PostDAO();
                ArrayList<Post> list = pd.getAll();
                
                int start = 0, end = 3;
                if (list.size() < 3) {
                    end = list.size();
                }
                if (request.getParameter("start") != null) {
                    start = Integer.parseInt(request.getParameter("start"));
                }
                if (request.getParameter("end") != null) {
                    end = Integer.parseInt(request.getParameter("end"));
                }

                ArrayList<Post> array = pd.getListByPage(list, start, end);
                
            %>

            <%
                for (int i = 0; i < array.size(); i++) {
                    Post p = array.get(i);
                    String description = p.getDescription();
                    //ViewDAO vd = new ViewDAO();
                    int id = p.getId();
//                    View v = vd.getViewByPostID(id+"");
//                    int numberOfView = Integer.parseInt(v.getNumberOfViews());
                    
            %>
            <div class="test" style="display: table-cell;
                 padding-left: 30px;
                 padding-top: 5%;
                 padding-bottom: 2%;
                 margin-left: 35%; 
                 margin-bottom: 1%;
                 margin-top: 10%;"><%=description%>
                <!--<form action="" method="post"><input type="submit" value="See more"></form>-->
                <a href ="Content_Blog.jsp?id=<%=id%>">See more...</a>
                
            </div>
            <%
                }
            %>

            <ul>
                <%
                    int a, b;
                    int numPage = list.size() / 3;
                    if ((numPage * 3) < list.size()) {
                        numPage += 1;
                    }
                    for (int i = 1; i <= numPage; i++) {
                        a = (i - 1) * 3;
                        b = i * 3;
                        if (b > list.size()) {
                            b = list.size();
                        }
                %>
                <li class="pagination">       
                    <a href="Blog.jsp?start=<%=a%>&end=<%=b%>"><%=i%></a>  
                </li>

                <%
                    }
                %>     
            </ul>

            <form style="margin-left: 40%;" action="search" method="get">
                <b>FIND SOMETHING?</b><br/><br/>
                <input class="searchtext" type="text" name="content" placeholder="Search Here">
                <input class = "search" type="submit" value="Search">
            </form>
            
            <button onclick="scrollToTop()" id="scroll-btn" title="Go to top"><i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i></button>
            <script>
                // When the user scrolls down 10px from the top of the document,we will show the button
                var timer;
                window.onscroll = function ()
                {
                    if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 20)
                    {
                        document.getElementById("scroll-btn").style.display = "block";
                    } else
                    {
                        document.getElementById("scroll-btn").style.display = "none";
                    }
                };

                function scrollToTop()
                {
                    document.documentElement.scrollTop = 0;
                }
            </script>
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
