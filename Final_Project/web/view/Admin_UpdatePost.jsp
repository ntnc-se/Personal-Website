<%-- 
    Document   : Admin_UpdatePost
    Created on : Jul 10, 2020, 1:41:23 PM
    Author     : __ntnc__ 
--%>

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
        <link rel="stylesheet" type="text/css" href="../css/Admin_Update.css">
    </head>

    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>
        <%
            if (request.getParameter("id") != null) {
                String id = request.getParameter("id");
                PostDAO pd = new PostDAO();
                Post p = pd.getPostByID(id);
        %>
        <h1>Update Information</h1>
        <form action="update@ntnc1877945" method="post">
            Its ID: <br/><input type="text" readonly name="id" value="<%=p.getId()%>"/><br/>
            Edit Name: <br/><input type="text" name="name" value="<%=p.getName()%>"/><br/>
            Edit Description: <br/><textarea name="description" rows="5" cols="70"><%=p.getDescription()%></textarea><br/>
            Edit Content: <br/><textarea name="content" rows="30" cols="100"> <%=p.getContent()%></textarea><br/>
            Edit Date: <br/><input type="text" name="date" value="<%=p.getDate()%>"/><br/>
            <input id="sub" type="submit" value="Update"/>
        </form>
        <%
            }
        %>
    </body>
</html>
