package service;

import java.util.ArrayList;

import dao.ReserveDao;
import model.Reserve;

public class SearchReserve {
	public ArrayList<Reserve> searchReserve() {
		ReserveDao dao = new ReserveDao();
		return dao.searchReserve();
	}
	public Reserve searchReserve(int rid) {
		ReserveDao dao = new ReserveDao();
		return dao.searchReserve(rid);
	}

}
