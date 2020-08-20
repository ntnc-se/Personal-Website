<%-- 
    Document   : About_Me
    Created on : Jun 18, 2020, 9:15:55 AM
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
        <link rel="stylesheet" type="text/css" href="../css/About.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

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
                transition: 0.5s;
            }
            
            .icons{
                transition:  transform .5s ease;
            }
        </style>
    </head>
    <body>
        <header>
            <p style="animation: 1s ease-out 0s 1 slideInFromRight;" class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav style="animation: 1s ease-out 0s 1 slideInFromLeft;">
                <a href="../view/About_Me.jsp">About me</a>
                <a href="/ntnc/list">Blog</a>
                <a href="/ntnc/list_album">Travel</a>
                <a href="../view/Work.jsp">Work</a>
                <a href="../view/Home.jsp">Home</a>
            </nav>
            <a href="/ntnc/logout">Logout</a>
            <!--            content here-->

            <p style="font-size: 20px; margin-top: 7%; margin-left: 15%;margin-right: 15%;">
                Welcome to my world !<br/><br/>
                Actually, I'm a half introverted person. I think so. Because, I can spend a 
                whole day just thinking about the future and the things that have gone through
                in life. can spend the whole day wandering around, doing nothing. watch the sky,
                life and time pass silently.<br/><br/>
                In fact, even my parents saw that my personality had changed a lot, as a kid,
                I rarely talked to people, but ever since I changed my environment, I became 
                more confident and proactive. than. In fact, I'm quite adaptable to the new 
                environment and changed to be more appropriate
            </p>
            <br/>
            <img style="margin-left: 33%;" src="../images/About_me.jpg" alt="My Avatar">
            <br/>
            <p style="font-size: 20px; margin-top: 2%; margin-left: 15%;margin-right: 15%;">
                On the other hand, I am somewhat extrovert. I like listening to
                EDM music, I like being immersed in it and tune to the melody. 
                So I like to go to EDM concerts so I can dance and get into music. 
                I like traveling, traveling and going, exploring new lands. My
                opinion is that travel does not cost as much as you think, actually
                dust travel is very cheap, I still remember the time I and my middle 
                school friend, went like that with little money in our hands, we Not 
                at the hotel, we simply slept on the side of the road with an outdoor 
                barn just a few degrees Celsius - that was an experience I could never
                forget. I have no natural leadership, I think. But as a child, 
                I have had the opportunity to be a leader many times, and I feel 
                that I am doing it better every day. That's what I need for the 
                future job I want (now).<br/><br/>
                I write this blog mainly for people who love me. or simply sharing
                something in life, sometimes saying something is better than 
                keeping it for yourself.<br/>
                Have fun !
            </p>
            <i style="margin-left: 70%;
               margin-top: 5%;">Ha Noi, 14/7/2020</i>

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
            <a href="https://twitter.com/ChuongThuc" target="_blank"><img alt="Twitter icon" src="../images/Home/twitter.png" class="icons"></a>
            <a href="https://www.instagram.com/__chowng__/" target="_blank"><img alt="Instagram icon" src="../images/Home/instagram.png" class="icons"></a>
            <a href="mailto:chuongntnhe141612@fpt.edu.vn" target="_blank"><img alt="Gmail icon" src="../images/Home/gmail.png" class="icons"></a>
            <a href="https://www.linkedin.com/in/chuong-nguyen-4238ab187/" target="_blank"><img alt="Linkedin icon" src="../images/Home/linkedin.png" class="icons"></a>
            <a href="https://www.facebook.com/iamntnc" target="_blank"><img alt="Facebook icon" src="../images/Home/facebook.png" class="icons"></a>
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
