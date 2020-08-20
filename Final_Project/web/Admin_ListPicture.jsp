<%-- 
    Document   : Admin_ListPicture
    Created on : Jul 17, 2020, 9:33:52 AM
    Author     : __ntnc__ 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Pictures"%>
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
        <link rel="stylesheet" type="text/css" href="css/Admin_Album.css">
        <style>
            @keyframes slideInFromLeft {
                0% {
                    transform: translateX(-100%);
                }
                100% {
                    transform: translateX(0);
                }
            }

            table, td, th{
                border: 1px solid #51d0de;
            }

            .rows:hover{
                background-color: #f7f7f7;
                transition: 0.9;
            }
            
            .create:hover{
                transform: scale(1.2);
                transform-origin: center;
                transition: 0.5s;
                background-color: #51d0de;
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
            if (request.getAttribute("data") != null) {
                ArrayList<Pictures> list = (ArrayList<Pictures>) request.getAttribute("data");
        %>
        <h3 style="animation: 1s ease-out 0s 1 slideInFromLeft;
            margin-left: 7%;
            margin-top: 3%;">List all pictures in this Album</h3>
            
        <form style="margin-left: 10%; margin-top: 3%;" action="add_pic_@152761" method="POST">
            <b>Enter ID:</b>
            <br/><input required="" type="text" name="id">
            <br/>
            <b>Enter Album ID:</b>
            <br/><input required="" type="text" name="aid"><br/>
            <b>Paste link photo here:</b><br/><textarea required="" rows="2" cols="100" name="link"></textarea>
            <br/><br/>
            <input class="create" type="submit" value="Add new Photo">
        </form>    
        
        <table style="margin-left: 10%;
               margin-top: 4%;
               margin-right: 5%;">
            <thead>
                <tr style="background-color: #cccccc">
                    <th>Picture ID</th>                    
                    <th>Album ID</th>
                    <th>Action</th>
                </tr>
            </thead>
            <%
                for (int i = 0; i < list.size(); i++) {
                    String id = list.get(i).getId();
                    String album_id = list.get(i).getAid();
            %>
            <tbody>
                <tr class="rows">
                    <td><%=id%></td>
                    <td><%=album_id%></td>
                    <td><a href="deletepicblax14215?id=<%=id%>&aid=<%=album_id%>">Delete Photo</a></td>
                </tr>
            </tbody>
            <%}
            %>
            <%}
            %>
        </table>

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
