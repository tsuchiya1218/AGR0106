<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>予約完了画面</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>
<%-- 	<%
	String mail = (String) session.getAttribute("Mail");
	%>
	<p>
		ようこそ<%=mail%>さん
	</p> --%>
	<p>予約完了しました。</p>
	この度は、ご予約いただき誠にありがとうございます。<br>

<p><span>ご登録いただいたメールアドレスにメールを配信しております。ご確認お願い致します。</span></p>
	
<a href="index.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>

</body>