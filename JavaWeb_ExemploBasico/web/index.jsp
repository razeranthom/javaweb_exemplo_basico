<%-- 
    Document   : index
    Created on : 22/08/2020, 15:39:38
    Author     : razer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Servlets/JSP</title>
    </head>
    <body>
        <form action="Processar" method="post">
            <table>
                <tr>
                    <td>Texto Processado:</td>
                    <td><c:out value="${texto}" /></td>
                </tr>
                <tr>
                    <td>Número Processado:</td>
                    <td><c:out value="${numero}" /></td>
                </tr>
                <tr>
                    <td>Texto:</td>
                    <td><input type="text" name="texto" value="${texto}" />
                        <c:if test="${not empty textoRequerido}">
                            <span style="color: red"><c:out value="${textoRequerido}" /></span>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>Número:</td>
                    <td><input type="text" name="numero" value="${numero}" />
                        <c:if test="${not empty numeroRequerido}">
                            <span style="color: red"><c:out value="${numeroRequerido}" /></span>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Processar" /></td>
                    <td></td>
                </tr>
            </table>
        </form>
    </body>
</html>