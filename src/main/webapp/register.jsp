<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>登録画面</title>
</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>
	<h2>新規会員登録</h2>
	<p>新規法人会員情報を入力して、確認ボタンを押してください。</p>
	<form method="get" action="RegistUserServlet">
		<table>
			<tr>
				<td><label for="name">名前<span>(必須)</span></label></td>
				<td><input type="text" id="name" name="name"
					placeholder="名前を入力してください"></td>
			</tr>
			<tr>
				<td><label for="name">カタカナ<span>(必須)</span></label></td>
				<td><input type="text" id="kana" name="kana"
					placeholder="カタカナを入力してください"></td>
			</tr>
			<tr>
				<td><label for="password">パスワード<span>(必須)</span></label></td>
				<td><input type="text" id="password" name="password"
					placeholder="パスワード(６文字以上)"></td>
			</tr>
			<tr>
				<td><label for="password">パスワード<span>(必須)</span></label></td>
				<td><input type="text" id="password1" name="password1"
					placeholder="パスワード(６文字以上)"></td>
			</tr>
			<tr>
				<td><label for="email">Email<span>(必須)</span></label></td>
				<td><input type="text" id="email" name="email"
					placeholder="メールアドレス"></td>
			</tr>

			<tr>
				<td><label for="tel">電話番号<span>(必須)</span></label></td>
				<td><input type="text" id="tel" name="tel"
					placeholder="電話番号を入力してください"></td>
			</tr>
			<tr>
				<td><label for="adress">住所<span>(必須)</span></label></td>
				<td><input type="text" size="40" id="address" name="address"
					placeholder="住所を入力してください"></td>
			</tr>
			<tr>
				<td><label for="gender">性別<span>(必須)</span></label></td>
				<td><input type="radio" id="gender" name="gender" value="男"
					checked> 男 <input type="radio" name="gender" value="女">
					女</td>
			</tr>
			<tr>
				<td><label for="birthday">生年月日<span>(任意)</span></label></td>
				<td><input type="date" id="birthday" name="birthday"
					placeholder="年/月/日"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="確認" onclick="return check()"></td>
			</tr>
		</table>
	</form>
	<% String error = (String)request.getAttribute("ERROR"); 
		if(error != null){
			out.println("<span>"+error+"</span>");
		}
	%>
	<script type="text/javascript">
		function check() {
			var name = document.getElementById("name").value;
			var kana = document.getElementById("kana").value;
			var password = document.getElementById("password").value;
			var password1 = document.getElementById("password1").value;
			var email = document.getElementById("email").value;
			var tel = document.getElementById("tel").value;
			var address = document.getElementById("address").value;
			var gendre = document.getElementById("gender").value;
			var birthday = document.getElementById("birthday").value;
			if (name == "" || null) {
				alert("名前を入力してください");
				return false;
			} else if (kana == "null" || null) {
				alert("カタカナを入力してください");
			} else if (password == "" || password1 == "") {
				alert("パスワードを入力してください");
				return false;
			} else if (password != password1) {
				alert("パスワードが違います")
				return false;
			} else if (email == "" || null) {
				alert("名前を入力してください");
				return false;
			} else if (tel == "" || null) {
				alert("電話番号を入力してください");
				return false;
			} else if (address == "" || null) {
				alert("住所を入力してください");
				return false;
			} else {
				var result = confirm('以下の内容で会員登録します。'+
						'\n 名前：'+name +
						'\n カタカナ：' +kana +
						'\n パスワード：' +password +
						'\n Email：' +email +
						'\n 電話番号：' +tel +
						'\n 住所：' +address +
						'\n 性別：' +gender +
						'\n 生年月日：' + birthday
						);
				if (result) {
					return true;
				} else {
					return false;
				}
			}
		}
	</script>
</body>
</html>