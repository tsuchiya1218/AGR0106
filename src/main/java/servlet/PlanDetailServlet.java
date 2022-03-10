package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Plan;
import service.SearchPlan;

@WebServlet("/PlanDetailServlet")
public class PlanDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PlanDetailServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pid = request.getParameter("pid");
		//HttpSession session = request.getSession();
		if (pid != null) {
			Plan p = new Plan();
			SearchPlan sp = new SearchPlan();
			p = sp.searchPlanId(Integer.valueOf(pid));

			if (p != null) {
				request.setAttribute("Plan", p);
				// フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("planDetail.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
