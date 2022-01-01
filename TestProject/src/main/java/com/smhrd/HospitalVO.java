package com.smhrd;

public class HospitalVO {

	private int hos_seq;
	private String hos_name;
	private String hos_addr;
	private String hos_phone;
	private double latitude;
	private double longitude;
	private String hos_info;
	private String hos_pic1;
	private String hos_pic2;
	private String hos_pic3;
	
	
	public HospitalVO(int hos_seq, String hos_name, String hos_addr, String hos_phone, double latitude,
			double longitude, String hos_info, String hos_pic1, String hos_pic2, String hos_pic3) {
		super();
		this.hos_seq = hos_seq;
		this.hos_name = hos_name;
		this.hos_addr = hos_addr;
		this.hos_phone = hos_phone;
		this.latitude = latitude;
		this.longitude = longitude;
		this.hos_info = hos_info;
		this.hos_pic1 = hos_pic1;
		this.hos_pic2 = hos_pic2;
		this.hos_pic3 = hos_pic3;
	}
	
	public HospitalVO(String hos_name, String hos_addr, double latitude, double longitude, String  hos_info) {
		super();
		this.hos_name = hos_name;
		this.hos_addr = hos_addr;
		this.latitude = latitude;
		this.longitude = longitude;
		this.hos_info = hos_info;
	
	}
	
	
	public HospitalVO(String hos_name, String hos_addr, double latitude, double longitude) {
		super();
		this.hos_name = hos_name;
		this.hos_addr = hos_addr;
		this.latitude = latitude;
		this.longitude = longitude;
	
	}
	
	public HospitalVO(String hos_name, String hos_addr,String hos_phone, double latitude, double longitude, String  hos_info) {
		super();
		this.hos_name = hos_name;
		this.hos_addr = hos_addr;
		this.hos_phone = hos_phone;
		this.latitude = latitude;
		this.longitude = longitude;
		this.hos_info = hos_info;
	
	}
	

	
	public int getHos_seq() {
		return hos_seq;
	}
	public void setHos_seq(int hos_seq) {
		this.hos_seq = hos_seq;
	}
	public String getHos_name() {
		return hos_name;
	}
	public void setHos_name(String hos_name) {
		this.hos_name = hos_name;
	}
	public String getHos_addr() {
		return hos_addr;
	}
	public void setHos_addr(String hos_addr) {
		this.hos_addr = hos_addr;
	}
	public String getHos_phone() {
		return hos_phone;
	}
	public void setHos_phone(String hos_phone) {
		this.hos_phone = hos_phone;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getHos_info() {
		return hos_info;
	}
	public void setHos_info(String hos_info) {
		this.hos_info = hos_info;
	}
	public String getHos_pic1() {
		return hos_pic1;
	}
	public void setHos_pic1(String hos_pic1) {
		this.hos_pic1 = hos_pic1;
	}
	public String getHos_pic2() {
		return hos_pic2;
	}
	public void setHos_pic2(String hos_pic2) {
		this.hos_pic2 = hos_pic2;
	}
	public String getHos_pic3() {
		return hos_pic3;
	}
	public void setHos_pic3(String hos_pic3) {
		this.hos_pic3 = hos_pic3;
	}
	
	
}
