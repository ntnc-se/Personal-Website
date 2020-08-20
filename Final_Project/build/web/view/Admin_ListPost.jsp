<%-- 
    Document   : Admin_List
    Created on : Jul 10, 2020, 1:40:27 PM
    Author     : __ntnc__ 
--%>

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
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>
        
        <a href="Admin_AddNew.jsp">Add new Post</a>
        
        <%
            if (request.getAttribute("data") != null) {
                ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("data");
        %>
        <table>
            <tr>
                <th>ID</th>                    
                <th>Name</th>
                <th>Date</th>
                <th colspan="2">Action</th>
            </tr>
            <%                for (int i = 0; i < list.size(); i++) {
                    Post p = list.get(i);
                    int id = p.getId();
                    String name = p.getName();
                    String date = p.getDate();
            %>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=date%></td>
                <td><a href ="delete@ntnc1877945?id=<%=id%>">Remove</a></td>
                <td><a href ="Admin_UpdatePost.jsp?id=<%=id%>">Update</a></td>
            </tr>
            <%}
            %>
            <%}
            %>
        </table>
    </body>
</html>
