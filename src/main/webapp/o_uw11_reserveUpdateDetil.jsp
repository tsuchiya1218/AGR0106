<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>予約記録表更新画面</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
	Reserve r = (Reserve) request.getAttribute("Reserve");
	%>
	<h1>予約記録表編集</h1>
	<form method="post" action="ReserveInputServlet">
		<table>
			<tr>
				<td><label for="rid">予約番号</label></td>
				<td><input type="text" id="rid" name="rid" value="<%=r.getRid() %>" readonly 
				placeholder="予約日を入力してください"></td>
			</tr>
			<tr>
				<td><label for="rdate">予約日</label></td>
				<td><input type="date" id="rdate" name="rdate" value="<%=r.getRdate()%>" readonly
				placeholder="予約日を入力してください"></td>
			</tr>
			<tr>
				<td><label for="rbegin">旅行日</label></td>
				<td><input type="date" id="rbegin" name="rbegin" value="<%=r.getRbegin()%>"
					placeholder="旅行日を入力してください"></td>
			</tr>
			<tr>
				<td><label for="uid">顧客ID</label></td>
				<td><input type="text" id="uid" name="uid" value="<%=r.getUid()%>" readonly
					placeholder="顧客IDを入力してください"></td>
			</tr>

			<tr>
				<td><label for="pid">プランID</label></td>
				<td><input type="text" id="pid" name="pid" value="<%=r.getPid()%>"
					placeholder="プランIDを入力してください"></td>
			</tr>

			<tr>
				<td><label for="payment">決済状態選択</label></td>
				<td><select id="payment" name="payment"> 
						<option value="支払待ち" selected>支払待ち</option>
						<option value="支払済み">支払済み</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="pnum">利用人数</label></td>
				<td><input type="text" id="pnum" name="pnum" value="<%=r.getPnum()%>"
					placeholder="利用人数を入力してください"></td>
			</tr>
			<tr>
				<td><label for="pdate">旅行日数</label></td>
				<td><input type="text" id="pdate" name="pdate" value="<%=r.getPdate()%>"
					placeholder="旅行日数を入力してください"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登録"></td>
			</tr>
		</table>
	</form>
	<!-- <a href="login.jsp"> トップページに戻る</a> -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>