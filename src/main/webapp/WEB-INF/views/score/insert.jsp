<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩</title>
</head>
<body>
添加学生成绩<br >
<form action="${pageContext.request.contextPath }/score/insert" method="post">
学生姓名<input type="text" name="stuName" /><br />
学生性别<input type="radio" name="gender" value="男">男
      <input type="radio" name="gender" value="女">女<br>
课程名称<input type="text" name="courseName" ><br >
课程成绩<input type="number" name="courseScore"><br>
<input type="submit" value="保存成绩">
</form>
</body>
</html>