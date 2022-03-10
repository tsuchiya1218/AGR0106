<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <form action="ExitServlet" method="post">
	<input type="submit" value="ログアウト">
</form> -->
<header>
	<a href="index.jsp"><img src="images/header.png" alt=""></a>
	<%
	String userid = (String) session.getAttribute("userId");
	if (userid != null) {
		out.println("<p>ようこそ" + userid + "さん<a href='ExitServlet'>ログアウト</a></p>");
	%>
	<p>総合旅行サイト:株式会社ゼット・エイチ・エス</p>
	<nav>
		<ul>
			<li><a href="0_uw01userInput.jsp">顧客情報入力</a></li>
			<li><a href="o_uw02_search.jsp">顧客情報検索</a></li>
			<li><a href="o_uw03_plan.jsp">プラン検索</a></li>
			<li><a href="o_uw05_anqetReview.jsp">アンケート確認</a></li>
			<li><a href="o_uw04_reserveInput.jsp">予約表入力</a></li>
			<li><a href="o_uw11_reserveUpdate.jsp">予約更新</a></li>
			<li><a href="o_uw12anqetSend.jsp">アンケート送信</a></li>
		</ul>
	</nav>

	<%
	} else if (userid == null) {
/* 	out.println("<a href='userLogin.jsp'>ログイン</a>");
	out.println("<a href='register.jsp'>登録</a>"); */
	}
	%>


</header>