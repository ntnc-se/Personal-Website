<%-- 
    Document   : Travel
    Created on : Jun 18, 2020, 9:12:08 AM
    Author     : __ntnc__ 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Album"%>
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
        <link rel="stylesheet" type="text/css" href="css/Travel.css">
        <style>
            /*            main{
                            background-image: url('../images/background2.jpg');       
                            background-position:  center;
                            background-repeat: no-repeat;
                            background-size: cover;
                            opacity: 0.8;
                        }*/

            @keyframes slideInFromLeft {
                0% {
                    transform: translateX(-100%);
                }
                100% {
                    transform: translateX(0);
                }
            }

            .test:hover{
                transform: scale(1.3);
                transform-origin: center;
                transition: 0.5s;
            }

            .test{
                transition:  transform .5s ease;
            }

            .icons:hover{
                transform: scale(1.3);
                transform-origin: center;
                transition: 0.8s;
            }

            .icons{
                transition:  transform .5s ease;
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

        </style>
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>
        <div class="mainscreen">
            <main class="content">
                <nav>
                    <a href="view/About_Me.jsp">About me</a>
                    <a href="/ntnc/list">Blog</a>
                    <a href="">Travel</a>
                    <a href="view/Work.jsp">Work</a>
                    <a href="view/Home.jsp">Home</a>
                </nav>
                <!--            content here-->
                <h2 style="padding-top: 10%;
                    padding-left: 10%;
                    padding-bottom: 5%;
                    animation: 1s ease-out 0s 1 slideInFromLeft;">Here is the photo albums about my trips</h2>

                <%
                    if (request.getAttribute("data") != null) {
                        ArrayList<Album> list = (ArrayList<Album>) request.getAttribute("data");
                %>
                <%
                    int count = 0;
                    int check = 1;
                    int numberOfAlbumsEachLine = 4;
                    for (int i = 0; i < list.size(); i++) {
                        Album a = list.get(i);
                        String id = a.getId();
                        String content = a.getContent();
                        String date = a.getDateCreated();
                %>

                <%
                    count++;
                    if (count > numberOfAlbumsEachLine * check) {
                %>
                <br/>
                <%
                    check++;
                %>

                <%}%>

                <div class="test" style="display: inline-block;
                     font-size: 130%;
                     padding-left: 7%;
                     margin-top: 3%;"><%=content%>
                    <p>Created at: <%=date%></p>
                    <!--<form action="" method="post"><input type="submit" value="See more"></form>-->  
                    <a href ="Content_Album.jsp?id=<%=id%>">View Album</a>
                </div>
                <%}%>
                <%}%>

            </main>

            <form style="margin-left: 40%;" action="search_album" method="get">
                <b>FIND SOMETHING?</b><br/><br/>
                <input class="searchtext" type="text" name="content" placeholder="Search Here">
                <input class = "search" type="submit" value="Search">
            </form>
                
            <footer class="footer">
                <!--            <p>
                                This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit
                                <a href="http://www.intro-webdesign.com">Intro to Web Design</a>
                            </p>-->
                <br/>
                <hr style="border: 1px solid grey;">
                <a href="https://twitter.com/ChuongThuc" target="_blank"><img alt="Twitter icon" src="images/Home/twitter.png" class="icons"></a>
                <a href="https://www.instagram.com/__chowng__/" target="_blank"><img alt="Instagram icon" src="images/Home/instagram.png" class="icons"></a>
                <a href="mailto:chuongntnhe141612@fpt.edu.vn" target="_blank"><img alt="Gmail icon" src="images/Home/gmail.png" class="icons"></a>
                <a href="https://www.linkedin.com/in/chuong-nguyen-4238ab187/" target="_blank"><img alt="Linkedin icon" src="images/Home/linkedin.png" class="icons"></a>
                <a href="https://www.facebook.com/iamntnc" target="_blank"><img alt="Facebook icon" src="images/Home/facebook.png" class="icons"></a>
                <p style="text-align: left;padding: 5px;">         
                    + Phone: 0916 898 775<br/>
                    + Address: FPT University, Hoa Lac, Hoa Son Binh, Vietnam<br/>
                    + Mail: ntnc.2k@gmail.com
                </p>
                <p style="text-align: center;">
                    Copyright &copy; 2020 All Rights Reserved by NTNC.
                </p>
            </footer>
        </div>
    </body>
</html>
