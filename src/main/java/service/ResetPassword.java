package service;

import dao.UserDao;

public class ResetPassword {
	public int resetPassword(String pass,String newPass,String mail) {
		UserDao ud = new UserDao();
		return ud.resetPassword(pass,newPass,mail);
	}
	
}
