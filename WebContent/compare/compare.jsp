<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css" media="screen">
<link rel="stylesheet" href="../css/bootswatch.min.css">
</head>
<body>
	<!--  header -->
	<div class="bs-component">
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Privacy Questions</a>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav">
					<li><a href="uploadFile.html">upload</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="row">
	<br><br>
	</div>
	
	<%
	List<String> pathList = (List<String>)session.getAttribute("fileList");
	String file1 = pathList.get(0);
	String file2 = pathList.get(1);
	%>
	<div class="col-lg-6 well">
		<iframe src="../file/<%=file1 %>" style="width: 100%; height: 650px;" frameborder="0"></iframe>
	</div>
	
	<div class="col-lg-6 well">
		<iframe src="../file/<%=file2 %>" style="width: 100%; height: 650px;" frameborder="0"></iframe>
	</div>



	
	
</body>
</html>