<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>予約登録完了画面</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>予約を登録しました。</h1>
	
	<a href="login.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>