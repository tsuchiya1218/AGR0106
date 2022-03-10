<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<meta charset="UTF-8">
<title>顧客登録完了画面</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>以下の情報で登録完了しました。</h1>
	<%
	User u = (User) request.getAttribute("saveUser");
	%>

	<%
	if (u == null) {
		//out.println("検索した顧客がない");
	}
	%>
	<table border="1">
		<tr>
			<th>顧客ID</th>
			<th>顧客名</th>
			<th>カナ</th>
			<th>メールアドレス</th>
			<th>電話番号</th>
			<th>住所</th>
		</tr>
		<%
		if (u != null) {
			out.print("<tr>");
			out.print("<th>" + u.getUserId() + "</th>");
			out.print("<th>" + u.getName() + "</th>");
			out.print("<th>" + u.getKana() + "</th>");
			out.print("<th>" + u.getMail() + "</th>");
			out.print("<th>" + u.getTel() + "</th>");
			out.print("<th>" + u.getAddress() + "</th>");
		}
		%>
	</table>
	
	<a href="login.jsp"> トップページに戻る</a>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>