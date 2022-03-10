package service;

import dao.AccountDAO;
import dao.UserDao;
import model.Account;
import model.Login;
import model.User;
import model.UserLogin;

public class LoginLogic {
	//社員登録logic
	public boolean execute(Login login) {
		AccountDAO dao = new AccountDAO();
		Account account = dao.findByLogin(login);
		return account != null;
	}
	//会員登録logic
	public boolean execute(UserLogin login) {
		UserDao dao = new UserDao();
		User user = dao.findByLogin(login);
		return user != null;
	}
}