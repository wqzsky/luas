<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>

</head>
<body>
<a href="${pageContext.request.contextPath }/score/preparedInsert">添加成绩</a>
<a href="${pageContext.request.contextPath }/score/search">查询成绩</a>
<table width="800" border="1" class="table table-hover">
<caption>成绩列表</caption>
  <tr>
    <td align="center">序号</td>
    <td align="center">姓名</td>
    <td align="center">性别</td>
    <td align="center">课程名称</td>
    <td align="center">课程成绩</td>
  </tr>
<c:forEach items="${scores }" var="item">
  <tr>
    <td align="center">${item.id }</td>
    <td align="center">${item.stuName }</td>
    <td align="center">${item.gender }</td>
    <td align="center">${item.courseName }</td>
    <td align="center">${item.courseScore }</td>
  </tr>
</c:forEach>
</table>
</body>
</html>