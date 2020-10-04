<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/upd?id=${p.id}" method="post">
<table border="1px">
	<tr>
		<td>项目编号</td>
		<td><input type="text" value="${p.id}" disabled="disabled" /></td>
	</tr>
	<tr>
		<td>项目名称</td>
		<td><input type="text" name="projectName" value="${p.projectname}" disabled="disabled"  /></td>
	</tr>
	<tr>
		<td>申报开始日期</td>
		<td><input type="text" name="startDate" value="${p.startdate}" disabled="disabled"  /></td>
	</tr>
	<tr>
		<td>申报结束日期</td>
		<td><input type="text" name="endDate" value="${p.enddate}"  disabled="disabled"  /></td>
	</tr>
	<tr>
		<td>申报状态</td>
		<td>
			<select name="status">
				<option value="0">已申报</option>
				<option value="1">审核中</option>
				<option value="2">已审核</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="提交" />
			<a href=""><input type="button" value="返回" /></a>
		</td>
	</tr>
	
	
	
</table>
</form>

</body>
</html>