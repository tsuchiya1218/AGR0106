package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Anqet;
import service.AnqetReview;

@WebServlet("/AnqetReviewServlet")
public class AnqetReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AnqetReviewServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Anqet> list = new ArrayList<>();
		AnqetReview ar = new AnqetReview();
		list = ar.searchAnqet();
		//HttpSession session = request.getSession();
		if (list != null) {
			request.setAttribute("Anqet", list);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw05_anqetReview.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw05_anqetReview.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
