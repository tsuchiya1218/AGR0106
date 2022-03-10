<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header>
	<a href="index.jsp"><img src="images/header.png" alt=""></a>
	<p>総合旅行サイト:株式会社ゼット・エイチ・エス</p>


	<nav>
		<ul>
			<li><a href="index.jsp">ホームページ</a></li>
			<%
			String mail = (String) session.getAttribute("Mail");
			if (mail != null) {
				out.println("<p>ようこそ" + mail + "さん<a href='ExitServlet'>ログアウト</a></p>");
				out.println("<p>  <a href='resetPassword.jsp'>パスワード変更</a>  </p>");

			} else if (mail == null) {
				out.println("<a href='userLogin.jsp'>ログイン</a>");
				out.println("<a href='register.jsp'>登録</a>");
			}
			%>
		</ul>
	</nav>
	<hr>
</header>