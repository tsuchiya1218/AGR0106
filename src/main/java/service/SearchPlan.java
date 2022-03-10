package service;

import java.util.ArrayList;

import dao.PlanDao;
import model.Plan;

public class SearchPlan {
//	public ArrayList<Plan> searchPlan() {
//		PlanDao dao = new PlanDao();
//		return dao.searchPlan();
//	}
	public Plan searchPlanId(int id) {
		PlanDao dao = new PlanDao();
		return dao.searchPlanId(id);
	}
	public ArrayList<Plan> searchPlan(int cid) {
		PlanDao dao = new PlanDao();
		return dao.searchPlan(cid);
	}
	public ArrayList<Plan> searchPlan(String keyword) {
		PlanDao dao = new PlanDao();
		return dao.searchPlan(keyword);
	}
}
