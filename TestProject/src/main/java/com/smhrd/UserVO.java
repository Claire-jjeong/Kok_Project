package com.smhrd;

public class UserVO {

	

	private String user_id;
	private String user_pw;
	private String user_name;
	private String email;
	private String addr;
	private String phone;
	private String adm;
	private String gender;
	private int birth_date;
	
	
	public UserVO(String user_id, String user_pw, String user_name, String email, String addr,
			String phone, String adm, String gender, int birth_date) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.adm = adm;
		this.gender = gender;
		this.birth_date = birth_date;
	}
	
	public UserVO(String user_id) 
	{
		super();
	
		this.user_id = user_id;

	}
	
	public UserVO( String user_pw, String email, String addr, String phone) 
	{
		super();
	
		this.user_pw = user_pw;
		this.email = email;
		this.addr = addr;
		this.phone = phone;

	}
	public UserVO(String user_pw, String email, String addr, String phone, String user_id) 
	{
		super();
	
		this.user_pw = user_pw;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.user_id = user_id;
	}
	public UserVO(String user_id, String user_name, String email)  
	// 여기다가는 user_pw 패스워드를 담으니까 user_name을 불러아닝왔을 때 안불러와지는거에요!아..죄송합니다
	// 이것만 user_name으로 바꿔주면 나올꺼에요~ 이거 바꾸고나서 안불러와지면 다시 불러주세요 ㅎㅎ네
	{
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.adm = adm;
		this.gender = gender;
		this.birth_date = birth_date;
	}
	
	public UserVO(String user_id, String user_pw)
	{
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.adm = adm;
		this.gender = gender;
		this.birth_date = birth_date;
	}
	
	public UserVO(String user_id, String user_name, String email, int birth_date, String addr,
			String phone, String gender) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.email = email;
		this.birth_date = birth_date;
		this.addr = addr;
		this.phone = phone;
		this.gender = gender;
	}
	
	public UserVO() 
	{

	}
	
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(int birth_date) {
		this.birth_date = birth_date;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAdm() {
		return adm;
	}
	public void setAdm(String adm) {
		this.adm = adm;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
