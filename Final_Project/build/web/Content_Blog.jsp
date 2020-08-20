<%-- 
    Document   : Content_Blog
    Created on : Jul 7, 2020, 4:51:40 PM
    Author     : __ntnc__ 
--%>

<%@page import="dal.ViewDAO"%>
<%@page import="model.View"%>
<%@page import="model.Reply_Comment"%>
<%@page import="dal.ReplyDAO"%>
<%@page import="model.UserComment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.CommentDAO"%>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/content.css">
        <script>
            function show_alert() {
                alert("You commented successfully !");
            }
        </script>
        <style>

            .icons:hover{
                transform: scale(1.3);
                transform-origin: center;
                transition: 0.5s;
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

            #more {display: none;}
        </style>
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav>
                <a href="view/About_Me.jsp">About me</a>
                <a href="/ntnc/list">Blog</a>
                <a href="/ntnc/list_album">Travel</a>
                <a href="view/Work.jsp">Work</a>
                <a href="view/Home.jsp">Home</a>
            </nav>

            <%
                if (request.getParameter("id") != null) {
                    String id = request.getParameter("id");
                    PostDAO pd = new PostDAO();
                    Post p = pd.getPostByID(id);
                    String date = p.getDate();
                    String name = p.getName();
            %>


            <%
                ViewDAO vd = new ViewDAO();
                View v = vd.getViewByID();  
                String numberOfViewPast = v.getNumberOfViews();
                
                Integer hitsCount
                        = (Integer) application.getAttribute("hitCounter");
                if (hitsCount == null || hitsCount == 0) {
                    /* First visit */
                    hitsCount = 1;
                } else {
                    /* return visit */
                    hitsCount = 1;
                }
                application.setAttribute("hitCounter", hitsCount);
                int viewNow = Integer.parseInt(numberOfViewPast) + hitsCount;
                
                vd.updateNumberOfView( viewNow + "");
            
            %>
            <div style="padding-top: 6%;">
                <h3 style="padding-left: 15%;"><%=name%></h3>
                <%=p.getContent()%>
            </div>
            <i style="float: right;margin-right: 15%;">Signature, NTNC. <%=date%></i>

            <br/><br/>
            <div style="background-color: #f5f5f5;
                 padding-bottom: 0px;">
                <hr/>
                <h3 style="margin-left: 3%;">COMMENT</h3>
                <%
                    CommentDAO cd = new CommentDAO();
                    ArrayList<UserComment> list = cd.getCommentsByPostID(id);
                    int count = list.size();
                %>
                <p style="margin-left: 20%;"><%=count%> COMMENT</p>
                <%
                    for (int i = 0; i < list.size(); i++) {
                        String phone = list.get(i).getPhone();
                        ReplyDAO rd = new ReplyDAO();
                        ArrayList<Reply_Comment> list_reply = rd.getReplyCommentsByPhoneID(phone);
                        // print out all reply comment, try to use drop down see all see less
                        int num_reply = list_reply.size();
                %>

<!--            <textarea style="border: none; margin-left: 20%;"><%=list.get(i).getUsername()%></textarea>-->
                <!--            <textarea style="border: none; margin-left: 20%;" rows="3" cols="100">
                                </textarea>-->
                <div style="margin-left: 20%;
                     background-color: white;
                     margin-right: 15.8%;
                     margin-bottom: 5px;">
                    <img src="images/user.jpg" alt="Avatar">  
                    <b><%=list.get(i).getUsername()%></b>
                    <p style="display: inline;">&nbsp; &nbsp; &nbsp;Posted at <%=list.get(i).getTime()%></p>
                    <textarea readonly="" style="border: none;
                              resize: none;" rows="2" cols="120">  <%=list.get(i).getComment()%> </textarea>
                    <button class="search" style="
                            border: none;
                            margin-left: 85.2%;" onclick="myFunction()" id="myBtn">See all(<%=num_reply%> replies)</button>

                </div>
                <p style="background-color: white;
                   margin-left: 45.7%;
                   margin-right: 15.7%;">
                    <span id="dots"></span>
                    <span style="margin: 2px;" id="more">
                        <%
                            for (int j = 0; j < list_reply.size(); j++) {
                                Reply_Comment r = list_reply.get(j);
                                String name_reply = r.getName();
                                String reply = r.getReply_content();
                        %>
                        <%=name_reply%>:  <%=reply%><br/>
                        <%
                            }
                        %>
                    </span>
                </p>

                <script>
                    function myFunction() {
                        var dots = document.getElementById("dots");
                        var moreText = document.getElementById("more");
                        var btnText = document.getElementById("myBtn");

                        if (dots.style.display === "none") {
                            dots.style.display = "inline";
                            btnText.innerHTML = "See all(<%=num_reply%> replies)";
                            moreText.style.display = "none";
                        } else {
                            dots.style.display = "none";
                            btnText.innerHTML = "close";
                            moreText.style.display = "inline";
                        }
                    }
                </script>

                <form style="margin-left: 45.7%;
                      margin-top: 3%;" action="add_reply" method="POST">
                    <input style="display: none;" type="text" name="pid" value="<%=id%>">
                    <input style="display: none;" value="<%=phone%>" type="text" name="phoneid" >
                    <div style="display: inline-block;"><input style="border: none;" type="text" name="name" placeholder="Enter your name"></div>
                    <div style="display: inline-block;"><input size="34" name="reply" style="border: none;" type="text" placeholder="Enter your reply"></div>
                    <div style="display: inline-block;"> <input class="search" type="submit" value="Reply"></div>
                </form>

                <%
                    }
                %>
                <br/><br/>
                <h4 style="margin-left: 20%;">POST A COMMENT</h4>
                <form style="margin-left: 20%;" action="addcomment" onsubmit="show_alert()" method="post">
                    *remember, you cannot edit comment, so be careful when upload !<br/><input style="display: none;" type="text" name="pid" value="<%=id%>">
                    Comment*<br/> <textarea style="border: none;" placeholder="Write your comment here..." required="" name="comment" rows="6" cols="120"></textarea>
                    <br/> <div style="display: inline-block;"><input size="40" style="border: none; margin-right: 20px;" placeholder="Your full name" required="" type="text" name="name"></div>
                    <div style="display: inline-block;"><input style="border: none; margin-right: 18px;" size="35" placeholder="E-mail address" required="" type="text" name="email"></div>
                    <div style="display: inline-block;"><input style="border: none; margin-right: 20px;" size="25" placeholder="Phone number" required="" type="text" name="phone"></div>
                    <br/>
                    <br/><input class="search" style="margin-bottom: 20px;" type="submit" value="Comment">
                </form>    
                <%}%>

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
            </div>
            <form style="margin-left: 40%;" action="search" method="get">
                <b>FIND SOMETHING?</b><br/><br/>
                <input class="searchtext" type="text" name="content" placeholder="Search Here">
                <input class = "search" type="submit" value="Search">
            </form>
        </main>
        <footer style="padding-top: 0px;" class="footer">
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
