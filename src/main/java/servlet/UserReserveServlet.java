package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Plan;
import model.Reserve;
import model.User;
import service.FindUser;
import service.SaveReserve;
import service.SearchPlan;

@WebServlet("/UserReserveServlet")
public class UserReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserReserveServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pid = request.getParameter("pid");

		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("Mail");
		if (mail == null) {
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("userLogin.jsp");
			dispatcher.forward(request, response);
		} else {

			SearchPlan sp = new SearchPlan();
			Plan p = sp.searchPlanId(Integer.parseInt(pid));

			request.setAttribute("Plan", p);
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("userReserve.jsp");
			dispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String rdate = request.getParameter("rdate");
		String rbegin = request.getParameter("rbegin");
		String pid = request.getParameter("pid");
		String pnum = request.getParameter("pnum");
		String price = request.getParameter("price");

		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("Mail");
		FindUser fu = new FindUser();
		User u = fu.findByMail(mail);

		Reserve r = new Reserve(rdate, rbegin, u.getUserId(), Integer.valueOf(pid), "支払待ち", pnum, "3", price);
		SaveReserve sr = new SaveReserve();

		int i = sr.save(r);
		if(i!=0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("reserveOk.jsp");
			dispatcher.forward(request, response);
		}

	}

}
