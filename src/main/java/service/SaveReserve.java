package service;

import dao.ReserveDao;
import model.Reserve;


public class SaveReserve {
	//予約記録表を保存
	public int save(Reserve r) {
		ReserveDao rd = new ReserveDao();
		return rd.save(r);
	}
	//予約記録表を更新
	public int updateReserve(Reserve re) {
		ReserveDao rd = new ReserveDao();
		return rd.updateReserve(re);
	}
}
