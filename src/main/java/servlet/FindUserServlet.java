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

@WebServlet("/FindUserServlet")
public class FindUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FindUserServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		FindUser findU = new FindUser();
		User a = findU.find(name);
		//HttpSession session = request.getSession();
		
		if (a != null) {

			request.setAttribute("User", a);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw02_search.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw02_search.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
//		HttpSession session = request.getSession();
		FindUser findU = new FindUser();
		User a = findU.find(name);

		if (a != null) {

			request.setAttribute("User1", a);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw12anqetSend.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw12anqetSend.jsp");
			dispatcher.forward(request, response);
		}

	}
}
