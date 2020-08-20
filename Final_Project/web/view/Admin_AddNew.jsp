<%-- 
    Document   : Admin_AddNew
    Created on : Jul 10, 2020, 1:40:53 PM
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
        <link rel="stylesheet" type="text/css" href="../css/Admin_Add.css">
        <style>
            @keyframes slideInFromLeft {
                0% {
                    transform: translateX(-100%);
                }
                100% {
                    transform: translateX(0);
                }
            }
        </style>
    </head>

    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>
        <%
            if (request.getAttribute("error") != null) {
        %>
        <h3 style="color: red"><%=request.getAttribute("error")%></h3>
        <%
            }
        %>
        <h1 style="animation: 1s ease-out 0s 1 slideInFromLeft;">Create a new Post</h1>
        <form action="add@ntnc1877945" method="post">
            Its ID: <br/><input type="text" name="id"/><br/>
            Edit Name: <br/><input type="text" name="name"/><br/>
            Edit Description: <br/><textarea name="description" rows="5" cols="70"></textarea><br/>
            Edit Content: <br/><textarea name="content" rows="30" cols="100"></textarea><br/>
            Edit Date: <br/><input type="text" name="date"><br/>
            <input id="sub" type="submit" value="Post"/>
        </form>
    </body>
</html>
