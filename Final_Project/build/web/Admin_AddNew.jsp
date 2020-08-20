<%-- 
    Document   : Admin_AddNew
    Created on : Jul 10, 2020, 1:40:53 PM
    Author     : __ntnc__ 
--%>

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
        <link rel="stylesheet" type="text/css" href="css/Admin_Add.css">
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
            if (request.getAttribute("error") != null) {
        %>
        <h3 style="color: red"><%=request.getAttribute("error")%></h3>
        <%
            }
        %>
        <h3 style=" margin-left: 10%;
            margin-top: 1%;
            animation: 1s ease-out 0s 1 slideInFromLeft;">Create a new Post</h3>
        <form style="text-align: center;"action="add@ntnc1877945" method="post">
            <b>Enter ID:</b><input style="border: solid 2px #1c77ac;
                                   margin: 3px;
                                   background-color: #e9ffff;" type="text" name="id"/><br/>
            <b>Enter Name:</b><input style="border: solid 2px #1c77ac;
                                     margin: 3px;
                                     background-color: #e9ffff;" type="text" name="name"/><br/>
            <b>Enter Description:</b> <br/><textarea style="border: solid 2px #1c77ac;
                                                     margin: 3px;
                                                     background-color: #e9ffff;" name="description" rows="5" cols="80"></textarea><br/>
            <b>Enter Content:</b> <br/><textarea style="border: solid 2px #1c77ac;
                                                 margin: 3px;
                                                 background-color: #e9ffff;" name="content" rows="15" cols="100"></textarea><br/>
            <b>Enter Date:</b> <br/><input style="border: solid 2px #1c77ac;
                                           margin: 3px;
                                           background-color: #e9ffff;" type="text" name="date"><br/>
            <input style=" background-color: red;
                   margin-top: 20px;
                   padding: 5px;" id="sub" type="submit" value="Create Post"/>
        </form>

        <footer style="margin-top: 1%;" class="footer">
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
