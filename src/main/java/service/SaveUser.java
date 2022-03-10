package service;

import dao.UserDao;
import model.User;

public class SaveUser {
	public int save(User u) {
		UserDao ud = new UserDao();
		return ud.save(u);
	}

}
