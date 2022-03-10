
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<form id="form" method="get" action="SaveUserServlet">
		<table>
			<tr>
				<td><label for="name">名前</label></td>
				<td><input type="text" id="name" name="name"
					placeholder="名前を入力してください"></td>
			</tr>
			<tr>
				<td><label for="name">カタカナ</label></td>
				<td><input type="text" id="kana" name="kana"
					placeholder="カタカナを入力してください"></td>
			</tr>
			<tr>
				<td><label for="password">パスワード</label></td>
				<td><input type="password" id="password" name="password"
					placeholder="パスワード(６文字以上)"></td>
			</tr>
			<tr>
				<td><label for="password">パスワード</label></td>
				<td><input type="password" id="password1" name="password1"
					placeholder="パスワード(６文字以上)"></td>
			</tr>
			<tr>
				<td><label for="email">Email</label></td>
				<td><input type="text" id="email" name="email"
					placeholder="メールアドレス"></td>
			</tr>

			<tr>
				<td><label for="tel">電話番号</label></td>
				<td><input type="text" id="tel" name="tel"
					placeholder="電話番号を入力してください"></td>
			</tr>
			<tr>
				<td><label for="adress">住所</label></td>
				<td><input type="text" size="40" id="address" name="address"
					placeholder="住所を入力してください"></td>
			</tr>
			<tr>
				<td><label for="sex">性別</label></td>
				<td><input type="radio" id="sex" name="gender" value="男"
					checked> 男 <input type="radio" name="gender" value="女">
					女</td>
			</tr>
			<tr>
				<td><label for="birthday">生年月日</label></td>
				<td><input type="date" id="birthday" name="birthday"
					placeholder="年/月/日"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="確認"></td>
			</tr>
		</table>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>