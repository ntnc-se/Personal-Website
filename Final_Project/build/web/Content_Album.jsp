<%-- 
    Document   : Content_Album
    Created on : Jul 16, 2020, 11:10:01 PM
    Author     : __ntnc__ 
--%>

<%@page import="model.Pictures"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.PictureDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>__ntnc__</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha3840iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/content.css">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .test:hover{
                transform: scale(1.5);
                transform-origin: center;
                transition: 0.6s;
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
            
            @keyframes slideInFromRight {
                0% {
                    transform: translateX(100%);
                }
                100% {
                    transform: translateX(-100);
                }
            }
            
        </style>
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav style="animation: 1s ease-out 0s 1 slideInFromRight;">
                <a href="view/About_Me.jsp">About me</a>
                <a href="/ntnc/list">Blog</a>
                <a href="/ntnc/list_album">Travel</a>
                <a href="view/Work.jsp">Work</a>
                <a href="view/Home.jsp">Home</a>
            </nav>

            <%
                if (request.getParameter("id") != null) {
                    String id = request.getParameter("id");
                    PictureDAO pd = new PictureDAO();
                    ArrayList<Pictures> list = pd.getPicturesByAlbumID(id);
            %>
            <br/>
            <br/>
            <br/>
            <%
                int count = 0;
                int check = 1;
                int numberOfPicturesEachLine = 4;
                for (int i = 0; i < list.size(); i++) {
                    Pictures p = list.get(i);
                    String link = p.getLink();
            %>
            <%
                count++;
                if (count > numberOfPicturesEachLine * check) {
            %>
            <br/>
            <%
                check++;
            %>

            <%}%>
            <div style="max-width: 30%;
                 display: table-cell;
                 padding-top: 5%;
                 padding-left: 3%;">
                <img class="test" style="
                     border: 2px solid black;
                     max-width: 90%" src="<%=link%>">
            </div>

            <%}%>
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
