package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reserve;
import service.SearchReserve;

@WebServlet("/SearchReserveServlet")
public class SearchReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchReserveServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String rid = request.getParameter("rid");
		//HttpSession session = request.getSession();
		if (rid == null || rid.equals("")) {
			ArrayList<Reserve> reserveList = new ArrayList<>();
			SearchReserve rs = new SearchReserve();
			reserveList = rs.searchReserve();
			

			if (reserveList != null) {
				request.setAttribute("ReserveList1", reserveList);
				// フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw11_reserveUpdate.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			Reserve r = new Reserve();
			SearchReserve rs = new SearchReserve();
			r = rs.searchReserve(Integer.valueOf(rid));// java.lang.NumberFormatException: null

			if (r != null) {
				request.setAttribute("Reserve", r);
				// フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw11_reserveUpdate.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Reserve> reserveList = new ArrayList<>();
		SearchReserve rs = new SearchReserve();
		reserveList = rs.searchReserve();
		//HttpSession session = request.getSession();
		if (reserveList != null) {
			request.setAttribute("ReserveList1", reserveList);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw11_reserveUpdate.jsp");
			dispatcher.forward(request, response);
		}
	}
}
