<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/selectAll" method="post">
	<select name="status">
		<option value="-1">全部</option>
		<option value="0">已申报</option>
		<option value="1">审核中</option>
		<option value="2">已审核</option>
	</select>
	<input type="submit" value="提交" />
</form>
<table border="1px" class="table">
	<tr>
		<td>项目编号</td>
		<td>项目名称</td>
		<td>申报开始日期</td>
		<td>申报结束日期</td>
		<td>申报状态</td>
		<td>操作</td>
	</tr>
<c:forEach items="${pageInfo.list}" var="item">
	<tr>
		<td>${item.id}</td>
		<td>${item.projectname}</td>
		<td>${item.startdate.substring(0,10)}</td>
		<td>${item.enddate.substring(0,10)}</td>
		<td><c:if test="${item.status==0}"><%out.print("已申报"); %></c:if><c:if test="${item.status==1}"><%out.print("审核中"); %></c:if><c:if test="${item.status==2}"><%out.print("已申核"); %></c:if></td>
		<td><a href="/getid?id=${item.id}">审核</a></td>
	</tr>

</c:forEach>

</table>
<div>
	<a href="/selectAll?pageNum=${pageInfo.firstPage}">首页</a>
	<c:if test="${pageInfo.hasPreviousPage}">
		<a href="/selectAll?pageNum=${pageInfo.prePage}">上一页</a>
	</c:if>
	<c:forEach items="${pageInfo.navigatepageNums}" var="i">
		<a href="/selectAll?pageNum=${i}">${i}</a>
	</c:forEach>
	<c:if test="${pageInfo.hasNextPage}">
		<a href="/selectAll?pageNum=${pageInfo.nextPage}">下一页</a>
	</c:if>
	<a href="/selectAll?pageNum=${pageInfo.lastPage}">尾页</a>
</div>

</body>
</html>