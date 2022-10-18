<%-- 
    Document   : nuevo
    Created on : 17 oct. de 2022, 18:51:06
    Author     : RAMIREZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nueva tarea</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td> <input type="text" name="id"> </td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td> <input type="text" name="tarea" value=""> </td>
                </tr> 
                <tr>
                    <td></td>
                    <td> <input type="submit" name="procesar"> </td>
                </tr>                 
            </table>
        </form>
    </body>
</html>
