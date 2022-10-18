<%@page import="com.emergentes.tarea"%>
<%@page import="java.util.ArrayList"%>
<% if(session.getAttribute("almacen")==null ){
    ArrayList<tarea> lisaux=new ArrayList<tarea>();
    session.setAttribute("almacen",lisaux); 
    } 
    ArrayList<tarea> almacen=(ArrayList<tarea>)session.getAttribute("almacen");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Tareas pendientes</h2>
        <a href="nuevo.jsp">Nuevo</a>

        <table border="1">
            <tr>
                <th>Id</th>
                <th>tarea</th>
                <th>Completado</th>               
            </tr>
            <%
              if(almacen!=null){
              for (tarea p:almacen){
            %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getTarea() %></td>
                <td><input type="checkbox" name="completado" value="ON" /></td>
                <td><a href="MainServlet?op=eliminar&id=<%=p.getId() %>">Eliminar</a> </td>
            </tr>
            <%
                }
                 }  
            %>
        </table>
    </body>
</html>
