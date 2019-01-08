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
            $.get("/book/appoint?bookId=" + bookId, function (data) {
                if ("success" == data.result) {
                    alert("删除成功");
                    window.location.reload();
                } else {
                    alert("删除失败");
                }
            });
        }
        function appointList(bookId) {
            $.get("/book/appointList?bookId=" + bookId, function (data) {
                if ("success" == data.result) {
                    alert("删除成功");
                    window.location.reload();
                } else {
                    alert("删除失败");
                }
            });
        }
    </script>
</head>
<body>
<div align="left" style="font-size: 25px;">图书预约记录</div>
<a href="book/bookList">返回</a>
<hr>
<table border="1" style="border-color: #00bbee;border-collapse: collapse">
    <tbody>
    <tr>
        <th>图书名称</th>
        <th>学号</th>
        <th>预约时间</th>
    </tr>
    <c:if test="${!empty appointList }">
        <c:forEach items="${appointList}" var="appoint">
            <tr>
                <td>${appoint.book.name }</td>
                <td>${appoint.studentId }</td>
                <td>${appoint.appointTime }</td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>
</body>
</html>
