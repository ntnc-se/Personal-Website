<%-- 
    Document   : Admin_UpdatePost
    Created on : Jul 10, 2020, 1:41:23 PM
    Author     : __ntnc__ 
--%>

<%@page import="model.Post"%>
<%@page import="dal.PostDAO"%>
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
        <link rel="stylesheet" type="text/css" href="css/Admin_Update.css">
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
        
        <nav style="margin-bottom: 5%;
             animation: 1s ease-out 0s 1 slideInFromRight;">
            <a href="view/Home.jsp">Return To Home Page</a>
        </nav>
        
        <%
            if (request.getParameter("id") != null) {
                String id = request.getParameter("id");
                PostDAO pd = new PostDAO();
                Post p = pd.getPostByID(id);
        %>
        <h3 style=" margin-left: 10%;
            margin-top: 1%;
            animation: 1s ease-out 0s 1 slideInFromLeft;">Edit Post</h3>
        <form action="update@ntnc1877945" method="post">
            <b>Its ID:</b> <input type="text" readonly name="id" value="<%=p.getId()%>"/><br/>
            <b>Edit Name:</b> <input type="text" name="name" value="<%=p.getName()%>"/><br/>
            <b>Edit Description:</b> <br/><textarea name="description" rows="5" cols="80"><%=p.getDescription()%></textarea><br/>
            <b>Edit Content:</b> <br/><textarea name="content" rows="20" cols="100"> <%=p.getContent()%></textarea><br/>
            <b>Edit Date:</b> <br/><input type="text" name="date" value="<%=p.getDate()%>"/><br/>
            <input style=" background-color: red;
                   margin-top: 20px;
                   padding: 5px;" id="sub" type="submit" value="Update"/>
        </form>
        <%
            }
        %>

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
