<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">

<title>会員ログイン画面</title>
</head>
<body>
	<script type="text/javascript">
		window.onload = function() {
			var mailElt = document.getElementById('mail');
			var passElt = document.getElementById('pass');
			var mailErrorSpan = document.getElementById('mailError');
			var passErrorSpan = document.getElementById('passError');
			//mailチェック
			mailElt.onblur = function() {
				//get userid
				var mail = mailElt.value;
				//space 削除　trim()
				mail = mail.trim();
				var regExp = /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]+.[A-Za-z0-9]+$/;
				if (regExp.test(mail)) {

				} else {
					mailErrorSpan.innerText = "正しいメールアドレスを入力してください";
				}
			}
			mailElt.onfocus = function() {
				//span 削除
				mailErrorSpan.innerText = "";
			}
			//passwordチェック
			passElt.onblur = function() {
				//get password
				var pass = passElt.value;
				var regExp1 = /^([a-zA-Z0-9]{8,})$/; //8文字以上の半角英数字
				if (regExp1.test(pass)) {
				} else {
					passErrorSpan.innerText = "パスワードは英数字8桁以上";
				}
			}
			passElt.onfocus = function() {
				if (passErrorSpan.innerText != "") {
					passElt.value = "";
				}
				//span 削除
				passErrorSpan.innerText = "";
			}

			var submitBtn = document.getElementById("submitBtn");
			submitBtn.onclick = function() {
				mailElt.focus();
				mailElt.blur();

				passElt.focus();
				passElt.blur();

				if (mailErrorSpan.innerText == ""
						&& passErrorSpan.innerText == "") {
					var form = document.getElementById("form");
					form.submit();
				}
			}
		}
	</script>
	<jsp:include page="userHeader.jsp"></jsp:include>
	<form id="form" action="UserLoginServlet" method="post">
		<table>
			<tr>
				<td>メールアドレス:</td>
				<td><input type="text" id="mail" name="mail"><span
					id="mailError"></span></td>
			</tr>
			<tr>
				<td>パスワード :</td>
				<td><input type="password" id="pass" name="pass"><span
					id="passError"></span></td>
			</tr>
		</table>
		<input type="button" id="submitBtn" value="ログイン">
	</form>
	<h3>初めての方</h3>
	<p>はじめてご利用されるお客様は、下記より会員登録をおこなってください。</p>
	<p>
		<button type="button" onclick="location.href='register.jsp'">新規会員登録</button>
	</p>
	<hr>
	<a href='login.jsp'>社員用ログインページへ</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>