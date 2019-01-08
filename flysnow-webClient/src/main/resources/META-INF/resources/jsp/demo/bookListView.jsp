<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
    <title>用户列表</title>

    <script type="text/javascript">
        function appoint(bookId) {
            $.get("book/appoint?bookId=" + bookId, function (data) {
                if ("success" == data.result) {
                    alert("预约成功");
                    window.location.reload();
                } else {
                    alert("预约失败");
                }
            });
        }
    </script>
</head>
<body>
<div align="left" style="font-size: 25px;">图书列表</div>
<hr>
<table border="1" style="border-color: #00bbee;border-collapse: collapse">
    <tbody>
    <tr>
        <th>图书名称</th>
        <th>馆藏数量</th>
        <th>操作</th>
    </tr>
    <c:if test="${!empty bookList }">
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.name }</td>
                <td align="right">${book.number }</td>
                <td>
                    <a href="javascript:appoint('${book.bookId }')">预约</a>
                    <a href="book/appointList?bookId=${book.bookId}">预约记录</a>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>
</body>
</html>
