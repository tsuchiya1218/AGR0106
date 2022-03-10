<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<title>予約画面</title>
</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>
	<%
	Plan p = (Plan) request.getAttribute("Plan");
	%>
	<h1>予約記録表入力</h1>
	<form method="post" action="UserReserveServlet">
		<table>
			<tr>
				<td><label for="rdate">予約日</label></td>
				<td><input type="date" id="rdate" name="rdate" value=""required="required"
					placeholder="予約日を入力してください"></td>
			</tr>
			<tr>
				<td><label for="rbegin">旅行日</label></td>
				<td><input type="date" id="rbegin" name="rbegin" value=""required="required"
					placeholder="旅行日を入力してください"></td>
			</tr>

			<tr>
				<td><label for="pid">プランID</label></td>
				<td><input type="text" id="pid" name="pid"
					value="<%=p.getPid()%>" readonly placeholder="プランIDを入力してください"></td>
			</tr>

			<tr>
				<td><label for="pnum">利用人数</label></td>
				<td><input type="text" id="pnum" name="pnum" value="1"
					placeholder="利用人数を入力してください">変更したら再計算ボタンを押してください</td>
			</tr>
			<tr>
				<td><label for="price1">価格(一人)</label></td>
				<td><input type="text" id="price1" name="price1" readonly
					value="<%=p.getPrice()%>">円(税込み)</td>
			</tr>
			<tr>
				<td>合計金額</td>
				<td>
					<p>
						<span id="price"><%=p.getPrice()%></span><span>円(税込み)</span> <input
							type="button" value="再計算" onclick="recalculation()">
					</p>
				</td>
			</tr>
			<tr>
				<td></td>
				<!-- <td><input type="submit" value="予約"></td> -->
				<td><input type="submit" value="確認" onclick="return check()"></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
	var total ;
		function recalculation() {
			var pnumElt = document.getElementById('pnum');
			var priceElt = document.getElementById('price1');
			var pnum = pnumElt.value;
			pnum = Number(pnum);
			var price1 = priceElt.value;
			price1 = Number(price1);
			total = pnum * price1;
			document.getElementById('price').innerText = total;
		}
		function check() {
			recalculation();
			var rdate = document.getElementById("rdate").value;
			var rbegin = document.getElementById("rbegin").value;
			var pid = document.getElementById("pid").value;
			var pnum = document.getElementById("pnum").value;
			/* var price = document.getElementById("price").value; */
			var result = confirm('以下の内容で予約します。'+
					'\n 予約日：'+rdate +
					'\n 旅行日：' +rbegin +
					'\n プランID：' +pid +
					'\n 利用人数：' +pnum +
					'\n 合計金額：' +total);
			if (result) {
				return true;
			} else {
				return false;
			}
		}

	</script>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>