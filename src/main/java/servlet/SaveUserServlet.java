package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.FindUser;
import service.SaveUser;

@WebServlet("/SaveUserServlet")
public class SaveUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveUserServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		
		//HttpSession session = request.getSession();
		
		String username = request.getParameter("name");
		String kana = request.getParameter("kana");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		
		User u = new User(username, kana,password, email, tel,address, gender, birthday);
		SaveUser su = new SaveUser();
		int i = su.save(u);
		if(i!=0) {
			FindUser findU = new FindUser();
			User a = findU.find(username);
			request.setAttribute("saveUser", a);

			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw01_saveUserFinish.jsp");
			dispatcher.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
