<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
	<!-- <link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>o_uw13アンケートを送る</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>顧客情報を検索する</h1>

	<form action="FindUserServlet" method="post">
		顧客情報を検索<input type="text" name="name" id="name"> 
		<input type="submit" value="検索" onclick="return check()">
	</form>
	<script type="text/javascript">
		function check() {
			var name = document.getElementById("name").value;
			
			if (name == "" || null) {
				alert("名前を入力して検索ください");
				return false;
			} else{
				return true;
			}
		}
	</script>
	
	
	<p>検索結果：</p>
	<%
	User u = (User) request.getAttribute("User1");
	%>

	<%
	if (u == null) {
		//out.println("検索した顧客がない");
	}
	%>
	<table border="1">
		<tr>
			<th>顧客名</th>
			<th>カナ</th>
			<th>メールアドレス</th>
			<th>電話番号</th>
			<th>アンケートを送信</th>
		</tr>
		<%
		if (u != null) {
			out.print("<tr>");
			out.print("<th>" + u.getName() + "</th>");
			out.print("<th>" + u.getKana() + "</th>");
			out.print("<th>" + u.getMail() + "</th>");
			out.print("<th>" + u.getTel() + "</th>");
			out.print("<th><button type='button' id='sendMail' onclick='sendMail()'>送信</button></th>");
		}
		%>
	</table>
	<script type="text/javascript">
		function sendMail(){
			var myFlag = confirm("アンケートを送信して、よろしいですか？");
			if(myFlag){
				alert("送信しました。");
			}
		}
	</script>
	<a href="login.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>