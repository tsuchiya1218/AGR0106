package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ResetPassword;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ResetPasswordServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String pass = request.getParameter("PASS");
		String newPass = request.getParameter("NEWPASS");
		
		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("Mail");
		
		ResetPassword rp = new ResetPassword();
		
		int i = rp.resetPassword(pass,newPass, mail);
		if(i!=0) {
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("resetPasswordFinish.jsp");
			dispatcher.forward(request, response);
		}else {
			String errorMsg = "パスワード変更失敗しました、現在のパスワードエラー、もう一度やり直してください";
			request.setAttribute("Error", errorMsg);
			RequestDispatcher dispatcher = request.getRequestDispatcher("resetPassword.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
