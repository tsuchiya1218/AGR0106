<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>o_uw05アンケートを確認する</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<form action="AnqetReviewServlet" method="get">

		<input type="submit" value="アンケートをを確認する">
	</form>
	<p>検索結果：</p>

	<%
	@SuppressWarnings("unchecked")
	ArrayList<Anqet> list = (ArrayList<Anqet>) request.getAttribute("Anqet");
	%>
	<table border="1">
		<tr>
			<th>アンケートID</th>
			<th>アドバイス</th>
			<th>予約番号</th>
			<th>満足度</th>
			<th>不満の点</th>
			<th>感想</th>
		</tr>
		<%
		if (list != null) {
			for (Anqet a : list) {
				out.print("<tr>");
				out.print("<th>" + a.getAid() + "</th>");
				out.print("<th>" + a.getAdvice() + "</th>");
				out.print("<th>" + a.getRid() + "</th>");
				out.print("<th>" + a.getSatisfy() + "</th>");
				out.print("<th>" + a.getComplain() + "</th>");
				out.print("<th>" + a.getImpress() + "</th>");
				out.print("</tr>");
			}
		}
		%>
	</table>
	<a href="login.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>