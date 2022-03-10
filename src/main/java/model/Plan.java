package model;

public class Plan {
	private String pname;//プラン名
	private int pid;//プランID
	private int tid;//交通ID
	private int hid;//ホテルid	
	private int cid;//カテゴリーid
	private String picture;
	private String pdate;//???期間
	private String detail;
	private String area;
	private String price;
	public Plan() {}
	public Plan(String pname, int pid, int tid, int hid, int cid, String picture, String pdate, String detail,
			String area,String price) {
		super();
		this.pname = pname;
		this.pid = pid;
		this.tid = tid;
		this.hid = hid;
		this.cid = cid;
		this.picture = picture;
		this.pdate = pdate;
		this.detail = detail;
		this.area = area;
		this.price = price;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
