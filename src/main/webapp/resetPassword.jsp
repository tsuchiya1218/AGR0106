<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>パスワード変更</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>
	<P>パスワードを入力してからパスワード変更ボタンをクリックして下さい</P>

	<FORM METHOD="POST" ACTION="ResetPasswordServlet">
		<TABLE BORDER="1">
			<TR>
				<TH ALIGN="LEFT">現在のパスワード</TH>
				<TD><INPUT TYPE="PASSWORD" id="pass" NAME="PASS" SIZE="15" MAXLENGTH="10"></TD>
			</TR>
			<TR>
				<TH ALIGN="LEFT" VALIGN="TOP">新しいパスワード</TH>
				<TD><INPUT TYPE="PASSWORD" id="newpass" NAME="NEWPASS" SIZE="15"
					MAXLENGTH="10"></TD>
			</TR>
			<TR>
				<TH ALIGN="LEFT" VALIGN="TOP">新しいパスワード（確認用）</TH>
				<TD><INPUT TYPE="PASSWORD" id="newpass2" NAME="NEWPASS2" SIZE="15"
					MAXLENGTH="10"></TD>
			</TR>
		</TABLE>

		<INPUT TYPE="SUBMIT" VALUE="変更する" onclick="check()"> <INPUT TYPE="RESET"
			VALUE="入力をやり直す">
	</FORM>
	<% String msg = (String)request.getAttribute("Error");
		if(msg != null){
			out.println(msg);
		}
	%>
	<script type="text/javascript">
		function check(){
			var pass = document.getElementById("pass").value;
			var newpass = document.getElementById("newpass").value;
			var newpass2 = document.getElementById("newpass2").value;
			var regExp1 = /^([a-zA-Z0-9]{8,})$/; //8文字以上の半角英数字
			if (regExp1.test(pass) && regExp1.test(newpass) && regExp1.test(newpass2)) {
				if(!= newpass.equals(newpass2)){
					return false;
				}
			} else {
				alert("パスワードは英数字8桁以上")
				return false;
			}
			return true;
		}
	</script>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>