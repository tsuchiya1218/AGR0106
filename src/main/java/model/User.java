package model;

public class User {
	private int userId;
	private String name;
	private String kana;
	private String pass;
	private String mail;
	private String tel;
	private String address;
	private String gender;
	private String birth;
	public User() {
	}
	
	public User(int userId, String name, String kana, String pass, String mail, String tel, String address,
			String gender, String birth) {
		super();
		this.userId = userId;
		this.name = name;
		this.kana = kana;
		this.pass = pass;
		this.mail = mail;
		this.tel = tel;
		this.address = address;
		this.gender = gender;
		this.birth = birth;
	}

	public User(String name, String kana, String pass, String mail, String tel, String address, String gender,
			String birth) {
		this.name = name;
		this.kana = kana;
		this.pass = pass;
		this.mail = mail;
		this.tel = tel;
		this.address = address;
		this.gender = gender;
		this.birth = birth;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKana() {
		return kana;
	}
	public void setKana(String kana) {
		this.kana = kana;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
}
