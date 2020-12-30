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
<div class="container">
	<div class="row" style="height: 120px;">
		<div class="col-md-3"><img src="${pageContext.request.contextPath }/images/logo.png" ></div>
		<div class="col-md-3" style="font-family: 微软雅黑;font-size: 20px;color: #333;"><br /><br /><br />|&nbsp;&nbsp;统一身份认证登录</div>
		<div class="col-md-3"></div>
		<div class="col-md-3"><img src="${pageContext.request.contextPath }/images/login_r.png" ></div>
	</div>
	<div class="row">
		<div class="col-md-12" style="background-color: orange;height: 30px; line-height:30px; margin: 10px 0px;">
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/preparedInsert">添加成绩</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/search">查询成绩</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
			<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>&nbsp;
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		    <table width="800" border="1" class="table table-hover">
			<caption>成绩列表</caption>
			  <tr>
			    <td align="center">序号</td>
			    <td align="center">姓名</td>
			    <td align="center">性别</td>
			    <td align="center">课程名称</td>
			    <td align="center">课程成绩</td>
			    <td align="center">编辑</td>
			    <td align="center">删除</td>
			  </tr>
			<c:forEach items="${scores }" var="item" varStatus="vs">
			  <tr>
			    <td align="center">${vs.count }</td>
			    <td align="center">${item.stuName }</td>
			    <td align="center">${item.gender }</td>
			    <td align="center">${item.courseName }</td>
			    <td align="center">${item.courseScore }</td>
			    <td align="center"><a href="${pageContext.request.contextPath }/score/updateShow?id=${item.id }">编辑</a></td>
			    <td align="center"><a href="${pageContext.request.contextPath }/score/deleteById?id=${item.id }" onclick="javascript:return confirm('确认删除吗?')">删除</a></td>
			  </tr>
			</c:forEach>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" style="background-color: #c8c8c8;height: 5px;margin-top: 10px;"></div>
	</div>
	<div class="row">
		<div class="col-md-12" style="height: 100px;line-height: 100px;text-align: center;">
			联系我们 信息中心 版权所有©2019-2020 请使用 IE浏览器IE8+、谷歌浏览器、firefox浏览器，360浏览器(极速模式)
		</div>
	</div>
</div>















</body>
</html>