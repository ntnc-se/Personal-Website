package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.View;
import dal.ViewDAO;
import dal.PostDAO;
import model.Post;
import java.util.ArrayList;

public final class Blog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>__ntnc__</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha3840iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/Blog.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Merriweather:400,900,900i\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
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
      out.write("            .icons:hover{  \n");
      out.write("                transform: scale(1.3);\n");
      out.write("                transform-origin: center;\n");
      out.write("                transition: 0.8s;    \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .icons{\n");
      out.write("                transition:  transform .5s ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .test:hover{\n");
      out.write("                transform: scale(1.1);\n");
      out.write("                transform-origin: center;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .test{\n");
      out.write("                transition:  transform .5s ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .pagination {\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .pagination a {\n");
      out.write("                color: black;\n");
      out.write("                float: left;\n");
      out.write("                padding: 20% 20px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                margin-left: 1200%;\n");
      out.write("            }\n");
      out.write("            .pagination a.active {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            .pagination a:hover:not(.active) {\n");
      out.write("                background-color: #51d0de;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .searchtext:hover{\n");
      out.write("                transform: scale(1.3);\n");
      out.write("                transform-origin: center;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .searchtext{\n");
      out.write("                transition:  transform .5s ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .search:hover{\n");
      out.write("                background-color: #51d0de;\n");
      out.write("                transition: 0.8s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #scroll-btn{\n");
      out.write("                background-color: #51d0de;\n");
      out.write("                border: medium none;\n");
      out.write("                border-radius: 30px;\n");
      out.write("                bottom: 40px;\n");
      out.write("                color: white;\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: none;\n");
      out.write("                outline: medium none;\n");
      out.write("                padding: 1px 13px 3px 13px;\n");
      out.write("                position: fixed;\n");
      out.write("                right: 30px;\n");
      out.write("                z-index: 100;\n");
      out.write("                font-size: 35px;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <p style=\"animation: 1s ease-out 0s 1 slideInFromLeft;\" class=\"name\">NTNC.</p>\t\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <main class=\"content\">\n");
      out.write("            <nav style=\"animation: 1s ease-out 0s 1 slideInFromRight;\">\n");
      out.write("                <a href=\"view/About_Me.jsp\">About me</a>\n");
      out.write("                <a href=\"\">Blog</a>\n");
      out.write("                <a href=\"/ntnc/list_album\">Travel</a>\n");
      out.write("                <a href=\"view/Work.jsp\">Work</a>\n");
      out.write("                <a href=\"view/Home.jsp\">Home</a>\n");
      out.write("            </nav>\n");
      out.write("            <!--            content here-->\n");
      out.write("            <!--            use some nice footer template-->\n");
      out.write("            <br/><br/><br/>\n");
      out.write("            ");

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
                
            
      out.write("\n");
      out.write("\n");
      out.write("            ");

                for (int i = 0; i < array.size(); i++) {
                    Post p = array.get(i);
                    String description = p.getDescription();
                    ViewDAO vd = new ViewDAO();
                    int id = p.getId();
                    View v = vd.getViewByPostID(id+"");
                    int numberOfView = Integer.parseInt(v.getNumberOfViews());
                    
            
      out.write("\n");
      out.write("            <div class=\"test\" style=\"display: table-cell;\n");
      out.write("                 padding-left: 30px;\n");
      out.write("                 padding-top: 5%;\n");
      out.write("                 padding-bottom: 2%;\n");
      out.write("                 margin-left: 35%; \n");
      out.write("                 margin-bottom: 1%;\n");
      out.write("                 margin-top: 10%;\">");
      out.print(description);
      out.write("\n");
      out.write("                <!--<form action=\"\" method=\"post\"><input type=\"submit\" value=\"See more\"></form>-->\n");
      out.write("                <a href =\"Content_Blog.jsp?id=");
      out.print(id);
      out.write("&views=");
      out.print(numberOfView);
      out.write("\">See more...</a>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("\n");
      out.write("            <ul>\n");
      out.write("                ");

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
                
      out.write("\n");
      out.write("                <li class=\"pagination\">       \n");
      out.write("                    <a href=\"Blog.jsp?start=");
      out.print(a);
      out.write("&end=");
      out.print(b);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</a>  \n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                ");

                    }
                
      out.write("     \n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <form style=\"margin-left: 40%;\" action=\"search\" method=\"get\">\n");
      out.write("                <b>FIND SOMETHING?</b><br/><br/>\n");
      out.write("                <input class=\"searchtext\" type=\"text\" name=\"content\" placeholder=\"Search Here\">\n");
      out.write("                <input class = \"search\" type=\"submit\" value=\"Search\">\n");
      out.write("            </form>\n");
      out.write("            <button onclick=\"scrollToTop()\" id=\"scroll-btn\" title=\"Go to top\"><i class=\"fa fa-arrow-circle-o-up\" aria-hidden=\"true\"></i></button>\n");
      out.write("            <script>\n");
      out.write("                // When the user scrolls down 10px from the top of the document,we will show the button\n");
      out.write("                var timer;\n");
      out.write("                window.onscroll = function ()\n");
      out.write("                {\n");
      out.write("                    if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 20)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"scroll-btn\").style.display = \"block\";\n");
      out.write("                    } else\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"scroll-btn\").style.display = \"none\";\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                function scrollToTop()\n");
      out.write("                {\n");
      out.write("                    document.documentElement.scrollTop = 0;\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <footer class=\"footer\">\n");
      out.write("            <!--            <p>\n");
      out.write("                            This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit\n");
      out.write("                            <a href=\"http://www.intro-webdesign.com\">Intro to Web Design</a>\n");
      out.write("                        </p>-->\n");
      out.write("            <br/>\n");
      out.write("            <hr style=\"border: 1px solid grey;\">\n");
      out.write("            <a  href=\"https://twitter.com/ChuongThuc\" target=\"_blank\"><img alt=\"Twitter icon\" src=\"images/Home/twitter.png\" class=\"icons\"></a>\n");
      out.write("            <a  href=\"https://www.instagram.com/__chowng__/\" target=\"_blank\"><img alt=\"Instagram icon\" src=\"images/Home/instagram.png\" class=\"icons\"></a>\n");
      out.write("            <a  href=\"mailto:chuongntnhe141612@fpt.edu.vn\" target=\"_blank\"><img alt=\"Gmail icon\" src=\"images/Home/gmail.png\" class=\"icons\"></a>\n");
      out.write("            <a  href=\"https://www.linkedin.com/in/chuong-nguyen-4238ab187/\" target=\"_blank\"><img alt=\"Linkedin icon\" src=\"images/Home/linkedin.png\" class=\"icons\"></a>\n");
      out.write("            <a  href=\"https://www.facebook.com/iamntnc\" target=\"_blank\"><img alt=\"Facebook icon\" src=\"images/Home/facebook.png\" class=\"icons\"></a>\n");
      out.write("            <p style=\"text-align: left;padding: 5px;\">         \n");
      out.write("                + Phone: 0916 898 775<br/>\n");
      out.write("                + Address: FPT University, Hoa Lac, Hoa Son Binh, Vietnam<br/>\n");
      out.write("                + Mail: ntnc.2k@gmail.com\n");
      out.write("            </p>\n");
      out.write("            <p style=\"text-align: center;\">\n");
      out.write("                Copyright &copy; 2020 All Rights Reserved by NTNC.\n");
      out.write("            </p>\n");
      out.write("        </footer>\n");
      out.write("    </body>   \n");
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
