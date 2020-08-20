package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>__ntnc__</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha3840iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/Home.css\">\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            .icons:hover{\n");
      out.write("                transform: scale(1.3);\n");
      out.write("                transform-origin: center;\n");
      out.write("                transition: 0.8s;\n");
      out.write("                transform: rotate(360deg);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes slideInFromLeft {\n");
      out.write("                0% {\n");
      out.write("                    transform: translateX(-100%);\n");
      out.write("                }\n");
      out.write("                100% {\n");
      out.write("                    transform: translateX(0);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes slideInFromRight {\n");
      out.write("                0% {\n");
      out.write("                    transform: translateX(100%);\n");
      out.write("                }\n");
      out.write("                100% {\n");
      out.write("                    transform: translateX(-100);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes text{\n");
      out.write("                0%{        \n");
      out.write("                }\n");
      out.write("                30%{\n");
      out.write("                    letter-spacing: 20px;\n");
      out.write("                }85%{\n");
      out.write("                    letter-spacing: 8px;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes text2{\n");
      out.write("                0%{        \n");
      out.write("                }\n");
      out.write("                30%{\n");
      out.write("                    font-size: 50px;\n");
      out.write("                }85%{\n");
      out.write("                    font-size: 35px;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h2{\n");
      out.write("                animation: text2 1.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1{\n");
      out.write("                animation: text 1.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <p style=\"animation: 1s ease-out 0s 1 slideInFromLeft;\" class=\"name\">NTNC.</p>\t\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <main class=\"content\">\n");
      out.write("            <nav style=\"animation: 1s ease-out 0s 1 slideInFromRight;\">\n");
      out.write("                <a href=\"../view/About_Me.jsp\">About me</a>\n");
      out.write("                <a href=\"/ntnc/list\">Blog</a>\n");
      out.write("                <a href=\"/ntnc/list_album\">Travel</a>\n");
      out.write("                <a href=\"../view/Work.jsp\">Work</a>\n");
      out.write("                <a href=\"../view/Home.jsp\">Home</a>\n");
      out.write("            </nav>\n");
      out.write("            <a href=\"/ntnc/logout\">Logout</a>\n");
      out.write("            <img id=\"avatar\" src=\"../images/Home/ava.jpg\" alt=\"My Avatar\">\n");
      out.write("            <div class=\"title\">\n");
      out.write("                <div>\n");
      out.write("                    <h1 class=\"content-mobile\"></h1>\n");
      out.write("                    <br/>\n");
      out.write("                    <h1>👋🏽 Hey there !</h1>\n");
      out.write("                    <h2 class=\"medium\">It's nice to meet you.</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <p class=\"main\">\n");
      out.write("                Hi, i am Chuong, currently student of FPT University now. So, basically, \n");
      out.write("                I am an unemployed person :\"> ! But, anyway, I had some part-time jobs...\n");
      out.write("                For now, I only pay attention on my major, and I am a person that really \n");
      out.write("                like traveling and explore the world around me, thought I have been a \n");
      out.write("                in-going person, who know ^^!  And to easy to imagine my life in FPT, \n");
      out.write("                let's see something...\n");
      out.write("            </p>\n");
      out.write("            <!--            <div id=\"carouselExampleControls\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                            <div class=\"carousel-inner\">\n");
      out.write("                                <div class=\"carousel-item active\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/farmer.jpg\" alt=\"picture 1\"> \n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>Moc Chau, Son La_farmer</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/thailand.jpg\" alt=\"picture 2\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>BangKok, ThaiLand_first trip</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/cameraman.jpg\" alt=\"picture 3\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>My Dinh Museum_cameraman</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/fusw.jpg\" alt=\"picture 4\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>FPT University_fusw</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/player.jpeg\" alt=\"picture 5\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>Little UK - FPT University_player</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img class=\"d-block w-100\" src=\"../images/Home/soldier.jpeg\" alt=\"picture 7\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <p>Vinh Phuc_soldier</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a class=\"carousel-control-prev\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"sr-only\">Previous</span>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"carousel-control-next\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"next\">\n");
      out.write("                                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"sr-only\">Next</span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>-->\n");
      out.write("            <p class=\"main2\">Actually I am still working to prepare for my future \n");
      out.write("                job. I learn about software-engineering so maybe I am going to pick\n");
      out.write("                any job belong to this major. But the way, I don't really like\n");
      out.write("                job which I have to sit before computer's screen for hours. So, \n");
      out.write("                maybe I will choose another job in the future.<br/><br/>\n");
      out.write("                Now I am trying to practice the skills that really important for\n");
      out.write("                me to apply any job, and...experience more.<br/><br/>\n");
      out.write("            </p>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <footer class=\"footer\">\n");
      out.write("            <!--            <p>\n");
      out.write("                            This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit\n");
      out.write("                            <a href=\"http://www.intro-webdesign.com\">Intro to Web Design</a>\n");
      out.write("                        </p>-->\n");
      out.write("            <a href=\"https://twitter.com/ChuongThuc\" target=\"_blank\"><img alt=\"Twitter icon\" src=\"../images/Home/twitter.png\" class=\"icons\"></a>\n");
      out.write("            <a href=\"https://www.instagram.com/__chowng__/\" target=\"_blank\"><img alt=\"Instagram icon\" src=\"../images/Home/instagram.png\" class=\"icons\"></a>\n");
      out.write("            <a href=\"mailto:chuongntnhe141612@fpt.edu.vn\" target=\"_blank\"><img alt=\"Gmail icon\" src=\"../images/Home/gmail.png\" class=\"icons\"></a>\n");
      out.write("            <a href=\"https://www.linkedin.com/in/chuong-nguyen-4238ab187/\" target=\"_blank\"><img alt=\"Linkedin icon\" src=\"../images/Home/linkedin.png\" class=\"icons\"></a>\n");
      out.write("            <a href=\"https://www.facebook.com/iamntnc\" target=\"_blank\"><img alt=\"Facebook icon\" src=\"../images/Home/facebook.png\" class=\"icons\"></a>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
