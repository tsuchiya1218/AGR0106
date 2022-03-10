package service;

import dao.UserDao;
import model.User;

public class FindUser {
	public User find(String name) {
	    UserDao dao = new UserDao();
	    return dao.findByName(name);
	  }
	public User findByMail(String mail) {
		UserDao dao = new UserDao();
		return dao.findByMail(mail);
	}
}