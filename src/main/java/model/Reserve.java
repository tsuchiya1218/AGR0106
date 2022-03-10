package model;

public class Reserve {
	private int rid;
	private String rdate;
	private String rbegin;
	private int uid;
	private int pid;
	private String payment;
	private String pnum;
	private String pdate;// 旅行日数
	private String totalprice;

	public Reserve() {
	}
	

	public Reserve(String rdate, String rbegin, int uid, int pid, String payment, String pnum, String pdate,
			String totalprice) {
		super();
		this.rdate = rdate;
		this.rbegin = rbegin;
		this.uid = uid;
		this.pid = pid;
		this.payment = payment;
		this.pnum = pnum;
		this.pdate = pdate;
		this.totalprice = totalprice;
	}


	public Reserve(int rid,String rdate, String rbegin, int uid, int pid, String payment, String pnum, String pdate,
			String totalprice) {
		super();
		this.rid = rid;
		this.rdate = rdate;
		this.rbegin = rbegin;
		this.uid = uid;
		this.pid = pid;
		this.payment = payment;
		this.pnum = pnum;
		this.pdate = pdate;
		this.totalprice = totalprice;
	}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRbegin() {
		return rbegin;
	}

	public void setRbegin(String rbegin) {
		this.rbegin = rbegin;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	

}
