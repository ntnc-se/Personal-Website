<%-- 
    Document   : Blog
    Created on : Jun 18, 2020, 9:18:35 AM
    Author     : __ntnc__ 
--%>

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
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav>
                <a href="view/About_Me.jsp">About me</a>
                <a href="">Blog</a>
                <a href="view/Travel.jsp">Travel</a>
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
                    int id = p.getId();
            %>
            <div style="display: table-cell;
                 padding: 20px;
                 margin-left: 35%; 
                 margin-bottom: 5%;
                 margin-top: 5%"><%=description%>
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
                    <a href="view/Blog.jsp?start=<%=a%>&end=<%=b%>"><%=i%></a>
                </li>
                <%
                    }
                %> 
            </ul>



        </main>

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
    </body>   
</html>
