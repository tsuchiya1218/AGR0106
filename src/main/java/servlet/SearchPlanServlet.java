package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Plan;
import service.SearchPlan;

@WebServlet("/SearchPlanServlet")
public class SearchPlanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchPlanServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//HttpSession session = request.getSession();

		SearchPlan sp = new SearchPlan();
		
		String cid = request.getParameter("cid");
		//CID検索
		if (cid != null) {
			ArrayList<Plan> planList = new ArrayList<>(); 
			planList = sp.searchPlan(Integer.parseInt(cid));
			if (planList != null) {
				request.setAttribute("CidPlanList", planList);
				// フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("areaSearchPlan.jsp");
				dispatcher.forward(request, response);
			} else {
			}
		}
//		if(cid == null) {
//			ArrayList<Plan> planList = new ArrayList<>();
//			planList = sp.searchPlan();
//			if (planList != null) {
//				request.setAttribute("PlanList", planList);
//				// フォワード
//				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw03_plan.jsp");
//				dispatcher.forward(request, response);
//			} else {
//				String errorMsg = "検索したキーワードが見つからなかった";
//				request.setAttribute("ErrorMsg", errorMsg);
//				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw03_plan.jsp");
//				dispatcher.forward(request, response);
//			}
//		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String keyword = request.getParameter("keyword");
		//HttpSession session = request.getSession();

		
		//キーワード検索
		if (keyword != null) {
			ArrayList<Plan> planList = new ArrayList<>();
			SearchPlan sp = new SearchPlan();
			planList = sp.searchPlan(keyword);

			if (planList != null) {
				request.setAttribute("PlanList", planList);
				// フォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw03_plan.jsp");
				dispatcher.forward(request, response);
			} else {
				String errorMsg = "検索したキーワードが見つからなかった";
				request.setAttribute("ErrorMsg", errorMsg);
				RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw03_plan.jsp");
				dispatcher.forward(request, response);
			}
		}

	}

}
