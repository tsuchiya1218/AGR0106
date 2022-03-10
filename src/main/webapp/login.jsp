<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travel_login</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<script type="text/javascript">
		
	</script>
	<form id="form" action="LoginServlet" method="post">
		<table>
			<tr>
				<td>社員ID:</td>
				<td><input type="text" id="userId" name="userId"><span
					id="userIdError"></span></td>
			</tr>
			<tr>
				<td>パスワード :</td>
				<td><input type="password" id="pass" name="pass"><span
					id="passError"></span></td>
			</tr>
		</table>
		<!-- <input type="button" id="submitBtn" value="ログイン"> -->
		<input type="submit" value="ログイン" onclick="return check()">
	</form>
	<script type="text/javascript">
function check() {
			var userId = document.getElementById("userId").value;
			var pass = document.getElementById("pass").value;
			var regExp1 = /^([a-zA-Z0-9]{8,})$/; //8文字以上の半角英数字
			if (userId == "" || null) {
				alert("社員IDを入力してください");
				return false;
			} else if (pass == "") {
				alert("パスワードを入力してください");
				return false;
			} else if(! regExp1.test(pass)){
				alert("パスワードは英数字8桁以上")
			}else{
				return true;
			}
		}
</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>