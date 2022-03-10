package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Plan;
import model.Reserve;
import service.SaveReserve;
import service.SearchPlan;

@WebServlet("/ReserveInputServlet")
public class ReserveInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReserveInputServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String rdate = request.getParameter("rdate");
		String rbegin = request.getParameter("rbegin");
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		String payment = request.getParameter("payment");
		String pnum = request.getParameter("pnum");
		String pdate = request.getParameter("pdate");

		Plan p = new Plan();
		SearchPlan sp = new SearchPlan();
		p = sp.searchPlanId(Integer.parseInt(pid));
		String totalprice = String.valueOf(Integer.valueOf(p.getPrice()) * Integer.valueOf(pnum));

		Reserve r = new Reserve(rdate, rbegin, Integer.valueOf(uid), Integer.valueOf(pid), payment, pnum, pdate,
				totalprice);
		SaveReserve sr = new SaveReserve();

		int i = sr.save(r);
		
		if (i != 0) {
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw04_saveReserveFinish.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String rid = request.getParameter("rid");
		String rdate = request.getParameter("rdate");
		String rbegin = request.getParameter("rbegin");
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		String payment = request.getParameter("payment");
		String pnum = request.getParameter("pnum");
		String pdate = request.getParameter("pdate");
		
		//HttpSession session = request.getSession();

		Plan p = new Plan();
		SearchPlan sp = new SearchPlan();
		p = sp.searchPlanId(Integer.parseInt(pid));
		String totalprice = String.valueOf(Integer.valueOf(p.getPrice()) * Integer.valueOf(pnum));

		Reserve r = new Reserve(Integer.parseInt(rid), rdate, rbegin, Integer.valueOf(uid), Integer.valueOf(pid),
				payment, pnum, pdate, totalprice);
		SaveReserve sr = new SaveReserve();
		int i = sr.updateReserve(r);
		if (i != 0) {
			// フォワード
			request.setAttribute("UpdateReserve", r);
			RequestDispatcher dispatcher = request.getRequestDispatcher("o_uw11_reserveUpdateFinish.jsp");
			dispatcher.forward(request, response);
		}
	}

}
