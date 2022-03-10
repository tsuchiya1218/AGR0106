<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<title>o_uw03プラン検索画面</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="css/search.css">
<script src="js/jquery-3.3.1.js"></script>

<script src="js/jquery-3.3.1.js"></script>
</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>

	<!-- <form action="SearchPlanServlet" method="get">
		<input type="submit" value="plan一覧">
	</form> -->
	<h2>プラン検索（旅行先、区域、温泉、旅館等何でも検索できます）</h2>
	<form id="form" action="SearchPlanServlet" method="post">
		<div class="cp_iptxt">
			<label class="ef"> <input type="text" id="keyword"
				name="keyword" placeholder="キーワードを入力してください"> <input
				type="submit" id="submitBtn" class="button" value="検索">
			</label>
		</div>
	</form>
	<!-- <form action="SearchPlanServlet" method="post">
		<input type="text" id="keyword" name="keyword"
			placeholder="キーワードを入力してください"> <input type="submit" value="検索">
	</form> -->
	<div>
		<h2>区域から検索</h2>
		<p>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=7"'>九州</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=4"'>中部</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=2"'>東北</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=6"'>中国・四国</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=5"'>近畿</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=3"'>関東</button>
			<button type="button" class="button"
				onclick='location.href="SearchPlanServlet?cid=1"'>北海道</button>
		</p>
	</div>
	<%
	@SuppressWarnings("unchecked")
	ArrayList<Plan> clist = (ArrayList<Plan>) request.getAttribute("CidPlanList");
	%>
	<div class="page_one">
		<div class="contant">
			<div class="crumbs">
				<img src="images/search.png" alt="">
				<p>
					<span>検索結果：</span>
				</p>
			</div>
			<div class="xinxi clearfix">
				<div class="left">
					<div class="header">
						<span>プラン</span> <span class="jg">料金</span>
					</div>
					<ul>
						<%
						if (clist != null) {
							for (int i = 0; i < clist.size(); i++) {
								out.println("<li>");
								out.println("<div class='img'><img src='" + clist.get(i).getPicture() + "' style='width: 299px;'></div>\n");
								out.println("<div class='text1'>\n<p>" + clist.get(i).getPname() + "</p>\n\n<p>" + clist.get(i).getPdate()
								+ "</p>\n</div>\n");
								out.println("<div class='price'>\n<p class='price_num'>\n<span>&yen;</span>\n <span>" + clist.get(i).getPrice()
								+ "(税込み)</span>\n<p>");
								//out.print("<th><a href='PlanDetailServlet?pid=" + p.getPid() + "'>詳細画面へ</a></th>");
								out.println("<p><a href='PlanDetailServlet?pid=" + clist.get(i).getPid() + "'>詳細画面へ</a></p>\n</div>\n");
								out.println("</li>");
							}
						}
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>