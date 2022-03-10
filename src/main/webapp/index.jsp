<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
<script src="js/jquery-3.3.1.js"></script>
<title>ホームページ</title>
</head>
<body>
	<script type="text/javascript">
		
	</script>

	<jsp:include page="userHeader.jsp"></jsp:include>
	
	<h2>プラン検索（旅行先、区域、温泉、旅館等何でも検索できます）</h2>
	<form id="form" action="SearchPlanServlet" method="post">
		<div class="cp_iptxt">
			<label class="ef"> <input type="text" id="keyword"
				name="keyword" placeholder="キーワードを入力してください"> <input
				type="submit" id="submitBtn" class="button" value="検索">
			</label>
		</div>
	</form>
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
	<hr>
	<div>
		<h4>新型コロナウイルス感染症に伴う対応について</h4>
		<p><a href="https://www.his-j.com/info/new-normal/index.html?gclid=CjwKCAiA_omPBhBBEiwAcg7smQJe4U7bAuuN7B-lL7qAwRySrNjveTJONJ0ZBtf8tozgI87pXYf16hoC8PsQAvD_BwE">安心・安全に『新しい旅』を楽しんでいただくために</a></p>
		<p><a href="https://www.his-j.com/information/news/200407_info_emergency_declaration.html?gclid=CjwKCAiA_omPBhBBEiwAcg7smQJe4U7bAuuN7B-lL7qAwRySrNjveTJONJ0ZBtf8tozgI87pXYf16hoC8PsQAvD_BwE">取り組み 店舗・コールセンターの営業について</a></p>
		<p><a href="https://www.his-j.com/info/pcr/?gclid=CjwKCAiA_omPBhBBEiwAcg7smQJe4U7bAuuN7B-lL7qAwRySrNjveTJONJ0ZBtf8tozgI87pXYf16hoC8PsQAvD_BwE">PCR検査サポート</a></p>
		<p><a href="https://www.his-j.com/information/news/200228_domestic.html?gclid=CjwKCAiA_omPBhBBEiwAcg7smQJe4U7bAuuN7B-lL7qAwRySrNjveTJONJ0ZBtf8tozgI87pXYf16hoC8PsQAvD_BwE">国内旅行の対応</a></p>
	</div>
	<hr>
	<h3>お知らせ</h3>
	<p>
		<a href="">【朝日新聞朝刊】特典付ツアー厳選！早期予約で無料アップグレード！モントレ沖縄3日間29,800円～184,800円</a>
	</p>
	<p>
		<a href="">【そらとぶピカチュウプロジェクト】めんそーれ沖縄！ポケんちゅ集合チュウ in 北谷
			チケット付ツアー好評発売中！</a>
	</p>
	<p>
		<a href="">【春旅キャンペーン】今がお得な春の旅行が大集合！この機会をお見逃しなく！</a>
	</p>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>