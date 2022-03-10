<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録完了画面</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
</head>
<body>
<jsp:include page="userHeader.jsp"></jsp:include>
<h1>登録完了しました。</h1>
この度は、総合旅行サイト株式会社ゼット・エイチ・エス会員にご登録いただき誠にありがとうございます。<br>

<span>ご登録いただいたメールアドレスにメールを配信しております。</span>

<p> <a href="userLogin.jsp">ログインページへ</a></p>

	<jsp:include page="footer.jsp"></jsp:include>
</body>


</html>