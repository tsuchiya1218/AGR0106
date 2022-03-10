package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reserve;
import service.SearchReserve;

@WebServlet("/ReserveUpdateServlet")
public class ReserveUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReserveUpdateServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String rid = request.getParameter("rid");
		//HttpSession session = request.getSession();
		Reserve r = new Reserve();
		SearchReserve rs = new SearchReserve();
		r = rs.searchReserve(Integer.valueOf(rid));// java.lang.NumberFormatException: null
		if (r != null) {
			request.setAttribute("Reserve", r);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw11_reserveUpdateDetil.jsp");
			dispatcher.forward(request, response);
		}
	}

}
