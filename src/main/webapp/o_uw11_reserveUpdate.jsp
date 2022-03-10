<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/common.css"> -->
<title>o_uw11予約を更新する</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<form action="SearchReserveServlet" method="get">
		予約情報を検索<input type="text" name="rid" id="rid" placeholder="予約番号を入力してください"> <input
			type="submit" value="検索">
	</form>
	<form action="SearchReserveServlet" method="POST">
		<input type="submit" value="支払待ち顧客検索">
	</form>
	<p>検索結果：</p>
	<%
	@SuppressWarnings("unchecked")
	ArrayList<Reserve> list = (ArrayList<Reserve>) request.getAttribute("ReserveList1");
	if (list != null) {
		out.println("<table border='1'><tr><th>予約番号</th><th>予約日</th><th>出発日</th><th>顧客ID</th><th>プランID</th>");
		out.println("<th>人数</th><th>旅行日数</th><th>合計金額（税込み）</th><th>入金状態</th><th>入金状態編集</th></tr>");
		for (Reserve r : list) {
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
			out.print("<th> <form action='ReserveUpdateServlet?rid="+r.getRid()+"' method='post'> <input type='submit' value='編集'></form> </th>");
			out.println("</tr>");
		}
		out.println("</table>");
	}

	Reserve r = (Reserve) request.getAttribute("Reserve");
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
		out.print("<th> <form action='ReserveUpdateServlet?rid="+r.getRid()+"' method='post'> <input type='submit' value='編集'></form> </th>");
		out.println("</tr></table>");
	}
	%>
	<a href="login.jsp"> トップページに戻る</a>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>