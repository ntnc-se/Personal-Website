<%-- 
    Document   : Admin_List
    Created on : Jul 10, 2020, 1:40:27 PM
    Author     : __ntnc__ 
--%>

<%@page import="model.View"%>
<%@page import="dal.ViewDAO"%>
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
        <link rel="stylesheet" type="text/css" href="css/Admin_List.css">
        <style>
            @keyframes slideInFromLeft {
                0% {
                    transform: translateX(-100%);
                }
                100% {
                    transform: translateX(0);
                }
            }

            .add{
                margin-left: 10%;
                margin-bottom: 4%;
                font-size: 130%;
                border: 1px solid black;
            }

            .add:hover{
                transform: scale(1.2);
                transform-origin: center;
                transition: 0.5s;
            }

            .right th{
                color: black;
                background-color: #51d0de;
                border-radius: 6px 6px 0 0;
                font-size: 20px;
            }

            th:first-child{
                font-size: 20px;
                padding-left: 80px;
            }

            th:nth-child(2), th:nth-child(3){
                font-size: 18px;
                padding-right: 170px;
                padding-left: 190px;
            }
            td:first-child{
                padding-left: 90px;
                padding-right: 60px;
                font-size: 20px;
            }

            tr{
                background-color: white;
                border: groove 1px #cccccc;
            }

            tr:last-child{
                -webkit-border-radius: 6px 6px 0 0;
                border-radius: 0 0 6px 6px;	
            }
            tr:last-child>td:first-child {
                -webkit-border-radius: 0 0 0 6px;
                border-radius: 0 0 0 6px;	
            }

            tr:last-child>td:last-child{
                -webkit-border-radius: 0 0 6px 0;
                border-radius: 0 0 6px 0;	
            }

            .right th, .right td{
                margin: 7%;
                padding-bottom: 8px;
                padding-top: 8px;
            }
            .right tr{
                opacity: 1;
            }
            tr:hover{
                opacity: 0.9;
                background-color: #eeeeee;
            }

            td:nth-child(2), td:nth-child(3){
                text-align: left;
                font-size: 15px;
            }

            table{
                margin-top: 4%;
                padding-left: 3%;
                box-shadow: 5px 5px 5px 10px #ccc;
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

        <h3 style="margin-left: 10%; margin-top: 2%;
            animation: 1s ease-out 0s 1 slideInFromLeft;">Admin Management Page</h3>
        <a class="add" href="list@albumntc0605177231">Manage Photo Albums</a>

        <a class="add" href="Admin_AddNew.jsp">Add new Post</a>

        <%

            if (request.getAttribute("data") != null) {
                ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("data");
                int count = list.size();

                ViewDAO vd = new ViewDAO();
                View v = vd.getViewByID();
                String numview = v.getNumberOfViews();
        %>

        <section class = "right">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="table-responsive" data-pattern="priority-columns">
                            <p style="margin-left: 0%;
                               margin-top: 2%;">Total: <%=count%> Posts</p>
                            <p style="margin-left: 0%;">Total View: <%=numview%></p>
                            <table>
                                <thead>
                                    <tr>
                                        <th>#ID</th>                    
                                        <th style="text-align: left;">Name</th>
                                        <th style="text-align: left;">Date</th>
                                        <th style="text-align: center;"colspan="3">Action</th>
                                    </tr>
                                </thead>
                                <%                for (int i = 0; i < list.size(); i++) {
                                        Post p = list.get(i);
                                        int id = p.getId();
                                        String name = p.getName();
                                        String description = p.getDescription();
                                        String date = p.getDate();
                                %>
                                <tbody>
                                    <tr>
                                        <td style="text-align: left;"><%=id%></td>
                                        <td><%=name%></td>
                                        <td><%=date%></td>
                                        <td><a style="margin: 5px;" href ="delete@ntnc1877945?id=<%=id%>">Remove</a></td>
                                        <td><a style="margin: 5px;" href ="Admin_UpdatePost.jsp?id=<%=id%>">Update</a></td>
                                        <td><a style="margin: 5px;" href="listcomment14362xxx?id=<%=id%>">Comments</a></td>
                                    </tr>
                                </tbody>
                                <%}
                                %>
                                <%}
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
