<%-- 
    Document   : Home
    Created on : Jun 11, 2020, 12:41:31 PM
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
        <link rel="stylesheet" type="text/css" href="../css/Home.css">
    </head>
    
    <!--        <a href="/SE1411_Session_Demo/logout">Logout</a>-->
    <body>
        
        <header>
            <p class="name">NTNC.</p>	
        </header>
        
        <main class="content">
            <nav>
                <a href="../content_JSP/About_Me.jsp">About me</a>
                <a href="list">Blog</a>
                <a href="../content_JSP/Travel.jsp">Travel</a>
                <a href="../content_JSP/Work.jsp">Work</a>
                <a href="../content_JSP/Home.jsp">Home</a>
            </nav>
            <a href="/ntnc/logout">Logout</a>
            <img id="avatar" src="../images/Home/ava.jpg" alt="My Avatar">
            <div class="title">
                <div>
                    <h1 class="content-mobile"></h1>
                    <br/>
                    <h1>👋🏽 Hey there,</h1>
                    <h1 class="medium">It's nice to meet you.</h1>
                </div>
            </div>
            <p class="main">
                Hi, i am Chuong, currently student of FPT University now. So, basically, 
                I am an unemployed person :"> ! But, anyway, I had some part-time jobs...
                For now, I only pay attention on my major, and I am a person that really 
                like traveling and explore the world around me, thought I have been a 
                in-going person, who know ^^!  And to easy to imagine my life in FPT, 
                let's see something...
            </p>
<!--            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../images/Home/farmer.jpg" alt="picture 1"> 
                        <div class="carousel-caption d-none d-md-block">
                            <p>Moc Chau, Son La_farmer</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/Home/thailand.jpg" alt="picture 2">
                        <div class="carousel-caption d-none d-md-block">
                            <p>BangKok, ThaiLand_first trip</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/Home/cameraman.jpg" alt="picture 3">
                        <div class="carousel-caption d-none d-md-block">
                            <p>My Dinh Museum_cameraman</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/Home/fusw.jpg" alt="picture 4">
                        <div class="carousel-caption d-none d-md-block">
                            <p>FPT University_fusw</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/Home/player.jpeg" alt="picture 5">
                        <div class="carousel-caption d-none d-md-block">
                            <p>Little UK - FPT University_player</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/Home/soldier.jpeg" alt="picture 7">
                        <div class="carousel-caption d-none d-md-block">
                            <p>Vinh Phuc_soldier</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>-->
            <p class="main2">Actually I am still working to prepare for my future 
                job. I learn about software-engineering so maybe I am going to pick
                any job belong to this major. But the way, I don't really like
                job which I have to sit before computer's screen for hours. So, 
                maybe I will choose another job in the future.<br/><br/>
                Now I am trying to practice the skills that really important for
                me to apply any job, and...experience more.<br/><br/>
        </main>
        
        <footer class="footer">
<!--            <p>
                This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit
                <a href="http://www.intro-webdesign.com">Intro to Web Design</a>
            </p>-->
            <a href="https://twitter.com/ChuongThuc" target="_blank"><img alt="Twitter icon" src="../images/Home/twitter.png" class="icons"></a>
            <a href="https://www.instagram.com/__chowng__/" target="_blank"><img alt="Instagram icon" src="../images/Home/instagram.png" class="icons"></a>
            <a href="mailto:chuongntnhe141612@fpt.edu.vn" target="_blank"><img alt="Gmail icon" src="../images/Home/gmail.png" class="icons"></a>
            <a href="https://www.linkedin.com/in/chuong-nguyen-4238ab187/" target="_blank"><img alt="Linkedin icon" src="../images/Home/linkedin.png" class="icons"></a>
            <a href="https://www.facebook.com/iamntnc" target="_blank"><img alt="Facebook icon" src="../images/Home/facebook.png" class="icons"></a>
        </footer>
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
