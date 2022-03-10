<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>o_uw04予約記録表を記入する</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>予約記録表を記入</h1>
	<form method="get" action="ReserveInputServlet">
		<table>
			<tr>
				<td><label for="rdate">予約日</label></td>
				<td>
				<input type="date" id="rdate" name="rdate" required="required"
					placeholder="年/月/日"> 
					<!-- <input type="text" id="rdate" name="rdate"
					placeholder="予約日を入力してください">
					</td> --></tr>
			<tr>
				<td><label for="rbegin">旅行日</label></td>
				<td>
				<input type="date" id="rbegin" name="rbegin" required="required"
					placeholder="年/月/日">
					
				<!-- <input type="text" id="rbegin" name="rbegin"
					placeholder="旅行日を入力してください"> -->
					
					</td>
			</tr>
			<tr>
				<td><label for="uid">顧客ID</label></td>
				<td><input type="text" id="uid" name="uid"  required="required"
					placeholder="顧客IDを入力してください"></td>
			</tr>

			<tr>
				<td><label for="pid">プランID</label></td>
				<td><input type="text" id="pid" name="pid" required="required"
					placeholder="プランIDを入力してください"></td>
			</tr>

			<tr>
				<td><label for="payment">決済状態選択</label></td>
				<!-- 	<td><input type="text" id="pdate" name="pdate">  -->
				<td><select id="payment" name="payment">
						<option value="支払待ち" selected>支払待ち</option>
						<option value="支払済み">支払済み</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="pnum">利用人数</label></td>
				<td><input type="text" id="pnum" name="pnum" required="required"
					placeholder="利用人数を入力してください"></td>
			</tr>
			<tr>
				<td><label for="pdate">旅行日数</label></td>
				<td><input type="text" id="pdate" name="pdate" required="required"
					placeholder="旅行日数を入力してください"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登録"></td>
			</tr>
		</table>
	</form>
	<a href="login.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>