package model;

public class UserLogin {
	private String mail;
	private String pass;
	public UserLogin() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}
	public UserLogin(String mail, String pass) {
		super();
		this.mail = mail;
		this.pass = pass;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	

}
