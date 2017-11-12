<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="5">
            <tr>
                <th>firstname</th>
                <th>lastname</th>
                <th>username</th>
                <th>Password</th>
                <th>email</th>
                <th>address</th>
                <th>delete</th>
                <th>edit</th>
            </tr>

            <c:forEach items="${userlist}" var="user">
                <tr>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                     <td><a href="delete?uid=${user.username}">delete</a></td> 
           			<td><a href="edit?uid=${user.username}">Edit</a></td>
            </tr>
            </c:forEach>
            
        </table>

</body>
</html>