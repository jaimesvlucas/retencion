<%-- 
    Document   : salarios
    Created on : 15-ene-2021, 21:18:16
    Author     : DAW-B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String nombre=request.getParameter("nombre");
           int salario= Integer.parseInt(request.getParameter("salario"));
           if(salario<=1000){
        %>
        <p>El salario neto de <%= nombre%> es <%=salario%> , tiene una retencion de 0% y su salario bruto es de <%= salario%></p>
        <% }else if((salario>1000) || (salario<=3000)){%>
        <p>El salario neto de <%= nombre%> es <%=salario-(salario*0.1)%>, tiene una retencion de 10% y su salario bruto es de <%= salario%> </p>
        <%}else if(salario<3000){%>
        <p>El salario neto de <%= nombre%> es <%=salario-(salario*0.2)%>, tiene una retencion de 20% y su salario bruto es de <%= salario%></p>
        <%}else{}%>
        <a href="index.jsp">Volver al index</a>
    </body>
</html>
