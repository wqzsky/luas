<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css" />

</head>
<body style="margin: 20px">
	<a href="${pageContext.request.contextPath }/score/preparedInsert">添加成绩</a>
	<br />
	<hr />
	<form class="form-inline"
		action="${pageContext.request.contextPath }/score/selectById"
		method="get">
		<div class="form-group">
			<label class="sr-only" for="exampleInputAmount">Amount (in
				dollars)</label>
			<div class="input-group">
				<div class="input-group-addon">ID</div>
				<input type="text" class="form-control" id="exampleInputAmount"
					placeholder="学号" name="id" value="${id }">
			</div>
		</div>
		<button type="submit" class="btn btn-primary">查询</button>
	</form>

	${message }
	<hr />
	<div style="color: gray; line-height: 30px;">
		序号:${scoreModel.id }<br /> 姓名:${scoreModel.stuName }<br />
		性别:${scoreModel.gender }<br /> 课程名称:${scoreModel.courseName }<br />
		课程成绩:${scoreModel.courseScore }<br />
	</div>
</body>
</html>