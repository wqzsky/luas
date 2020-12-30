<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩</title>
<script>
function check(){
	//验证性别
	var male = document.getElementById("male");
	var female = document.getElementById("female");
	if(male.checked==false && female.checked==false){
		document.getElementById("divgender").innerHTML="性别必须填写";
		return false;
	}else{
		document.getElementById("divgender").innerHTML="";
	}
	//验证成绩是否填写
	var courseScore = document.getElementById("courseScore");
	if(courseScore.value==""){
		document.getElementById("divcourseScore").innerHTML="成绩必须填写";
		return false;
	}else{
		document.getElementById("divcourseScore").innerHTML="";
	}
	return true;
}
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
<style>
.errornotify{
	color: #b73c00;
	font-size: 14px;
	font-weight: bold;
}
</style>
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
		<div class="col-md-6">
			<form class="form-horizontal" action="${pageContext.request.contextPath }/score/insert" method="post">
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">学生姓名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control"  name="stuName" value="${scoreModel.stuName }" placeholder="学生姓名"/><div class="errornotify">${stuName }</div>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">学生性别</label>
			    <div class="col-sm-10">
			    	<div class="radio">
					    <label>
					      <input type="radio" name="gender" id="male" value="男" <c:if test="${scoreModel.gender=='男' }">checked="checked"</c:if>>男
					    </label>
					    <label>
					      <input type="radio" name="gender" id="female" value="女" <c:if test="${scoreModel.gender=='女' }">checked="checked"</c:if>>女
					      <div class="errornotify" style="display:inline;" id="divgender"></div>
					    </label>
					</div>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">课程名称</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="courseName" value="${scoreModel.courseName }" placeholder="课程名称">
			    </div>
			  </div>			  

			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">课程成绩</label>
			    <div class="col-sm-10">
			       <input type="number" class="form-control" name="courseScore" id="courseScore" value="${scoreModel.courseScore }" placeholder="课程成绩">
			       <div class="errornotify">${ courseScore}</div><div class="errornotify" style="display: inline" id="divcourseScore"></div>
			    </div>
			  </div>	

			  
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default" onclick="return check()">保存成绩</button>
			    </div>
			  </div>
			</form>
		</div>
		<div class="col-md-6">
			<img src="${pageContext.request.contextPath }/images/default_bg.jpg">
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