<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<meta charset="UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>予約状況更新完了画面</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>以下の情報で更新完了しました。</h1>
	<%
	Reserve r = (Reserve) request.getAttribute("UpdateReserve");
	%>

	<%
	if (r != null) {
		out.println("<table border='1'><tr><th>予約番号</th><th>予約日</th><th>出発日</th><th>顧客ID</th><th>プランID</th>");
		out.println("<th>人数</th><th>旅行日数</th><th>合計金額（税込み）</th><th>入金状態</th><th>入金状態編集</th></tr>");
			out.println("<tr>");
			out.println("<th>" + r.getRid() + "</th>");
			out.println("<th>" + r.getRdate() + "</th>");
			out.println("<th>" + r.getRbegin() + "</th>");
			out.println("<th>" + r.getUid() + "</th>");
			out.println("<th>" + r.getPid() + "</th>");
			out.println("<th>" + r.getPnum() + "</th>");
			out.println("<th>" + r.getPdate() + "</th>");
			out.println("<th>" + r.getTotalprice() + "</th>");
			out.println("<th>" + r.getPayment() + "</th>");
			out.println("</tr>");
		out.println("</table>");
	}
	%>
	<a href="login.jsp"> トップページに戻る</a>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>