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
		document.getElementById("divgender").innerHTML="<img src='${pageContext.request.contextPath }/images/duihao.png' width='30'>";
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
</head>
<body>
<a href="${pageContext.request.contextPath }/score/selectAll">成绩列表</a>
添加学生成绩<br >
<form action="${pageContext.request.contextPath }/score/insert" method="post">
学生姓名<input type="text" name="stuName" value="${scoreModel.stuName }"/>${stuName }<br />
学生性别<input type="radio" name="gender" id="male" value="男" <c:if test="${scoreModel.gender=='男' }">checked="checked"</c:if>>男
      <input type="radio" name="gender" id="female" value="女" <c:if test="${scoreModel.gender=='女' }">checked="checked"</c:if>>女<div id="divgender" style="display: inline"></div><br />
课程名称<input type="text" name="courseName" value="${scoreModel.courseName }"><br >
课程成绩<input type="number" name="courseScore" id="courseScore" value="${scoreModel.courseScore }">${ courseScore}<div style="display: inline" id="divcourseScore"></div><br>
<input type="submit" value="保存成绩" onclick="return check()">
</form>
</body>
</html>