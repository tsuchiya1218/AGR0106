package model;

public class Anqet {
	private int aid;
	private String advice;
	private int rid;
	private String satisfy;
	private String complain;
	private String impress;
	public Anqet() {
	}
	public Anqet(int aid, String advice, int rid, String satisfy, String complain, String impless) {
		super();
		this.aid = aid;
		this.advice = advice;
		this.rid = rid;
		this.satisfy = satisfy;
		this.complain = complain;
		this.impress = impless;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getSatisfy() {
		return satisfy;
	}
	public void setSatisfy(String satisfy) {
		this.satisfy = satisfy;
	}
	public String getComplain() {
		return complain;
	}
	public void setComplain(String complain) {
		this.complain = complain;
	}
	public String getImpress() {
		return impress;
	}
	public void setImpress(String impress) {
		this.impress = impress;
	}
}
