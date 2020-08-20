<%-- 
    Document   : Blog
    Created on : Jun 18, 2020, 9:18:35 AM
    Author     : __ntnc__ 
--%>

<%@page import="model.Post"%>
<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" type="text/css" href="css/Blog.css">
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav>
                <a href="content_JSP/About_Me.jsp">About me</a>
                <a href="content_JSP/Blog.jsp">Blog</a>
                <a href="content_JSP/Travel.jsp">Travel</a>
                <a href="content_JSP/Work.jsp">Work</a>
                <a href="content_JSP/Home.jsp">Home</a>
            </nav>
            <a href="/ntnc/logout">Logout</a>
            <!--            content here-->
            <%
                if (request.getAttribute("data") != null) {
                    ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("data");
            %>

            <%                for (int i = 0; i < list.size(); i++) {
                    Post p = list.get(i);
                    String name = p.getContent();
            %>
            <p><%=name%></p>
            <%
                }
            %>

            <%
                }
            %>
        </main>
    </body>
</html>
