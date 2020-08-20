package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>__ntnc__</title>\n");
      out.write("        <!--        frame work-->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">-->\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                margin: 0;\n");
      out.write("                background-image: url('../images/background.jpg');       \n");
      out.write("                background-position:  center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                opacity: 0.8;\n");
      out.write("            }\n");
      out.write("            #top{\n");
      out.write("                width: 25%;\n");
      out.write("                height: 35px;\n");
      out.write("                margin-left: 40%;\n");
      out.write("                margin-top: 25px;      \n");
      out.write("            }   \n");
      out.write("            form{\n");
      out.write("                margin-top: 12%;\n");
      out.write("            }\n");
      out.write("            button{\n");
      out.write("                margin-left: 40%;\n");
      out.write("                width: 8%;\n");
      out.write("                height: 30px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("            }\n");
      out.write("            p{\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                margin-left: 41%;  \n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            #check{\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 40%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("<!--    note:\n");
      out.write("    trang cho client: chỉ có xem bài đăng, comment\n");
      out.write("    - trang chính có các mục bài đăng gồm ảnh và description, khi\n");
      out.write("    người dùng nhấn vào thì ra bài detail, kiểu post.details, post.name, post.content\n");
      out.write("    - (làm đc thì làm)chức năng comment post, insert vào database\n");
      out.write("    - có search bài đăng\n");
      out.write("    trang cho admin:\n");
      out.write("    - list tất cả các bài viết, có thêm, xóa, sửa, thống kê, search\n");
      out.write("    xem bài jdbc để biết chi tiết phần core cần làm những gì\n");
      out.write("\n");
      out.write("    - khi muốn hiển thị cả ảnh lẫn text thì insert vào database cả thẻ tag cả text\n");
      out.write("    kiểu text để lưu database: ntext\n");
      out.write("-->\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            Cookie[] listCookie = request.getCookies();
            String username = "";
            String password = "";
            String remember = "";
            int i = 0;
            if (listCookie != null) {
                while (i < listCookie.length) {
                    if (listCookie[i].getName().equals("username")) {
                        username = listCookie[i].getValue();
                    }
                    if (listCookie[i].getName().equals("password")) {
                        password = listCookie[i].getValue();
                    }
                    if (listCookie[i].getName().equals("remember")) {
                        remember = listCookie[i].getValue();
                    }
                    i++;
                }

            }
        
      out.write("\n");
      out.write("<!--        <h3 style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>-->\n");
      out.write("        <form action=\"/ntnc/login\" method=\"POST\">      \n");
      out.write("            <div>\n");
      out.write("                <input id=\"top\" type=\"text\" name=\"username\"  placeholder=\"Enter Username\" required=\"\">\n");
      out.write("            </div>     \n");
      out.write("            <div>\n");
      out.write("                <input id=\"top\" type=\"text\" name=\"password\"  placeholder=\"Enter Password\" required=\"\">\n");
      out.write("            </div>\n");
      out.write("            <input id=\"check\" type=\"checkbox\" name=\"remember\" value=\"ON\" ");
      out.print("ON".equals(remember) ? "checked='checked'" : "");
      out.write(">Remember me<br/>\n");
      out.write("            <div id=\"log\">\n");
      out.write("                <button>Sign In</button>\n");
      out.write("            </div>\n");
      out.write("            <h3><a href=\"Register.jsp\">Register</a></h3>\n");
      out.write("        </form>\n");
      out.write("        ");

            if (request.getAttribute("message") != null) {
        
      out.write("\n");
      out.write("        <p style=\"color:red\"> Login Failed, Please try again ! </p>\n");
      out.write("        ");

            }
        
      out.write("\n");
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
