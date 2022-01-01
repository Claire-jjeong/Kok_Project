package com.smhrd;

public class FamilyVO {

	private String user_id;
	private String fam1;
	private String fam2;
	private String fam3;
	private String fam4;
	
	public FamilyVO(String user_id, String fam1, String fam2, String fam3, String fam4) {
		super();
		this.user_id = user_id;
		this.fam1 = fam1;
		this.fam2 = fam2;
		this.fam3 = fam3;
		this.fam4 = fam4;
	}
	
	public FamilyVO(String user_id, String fam1)
	{
		super();
		this.user_id = user_id;
		this.fam1 = fam1;
		this.fam2 = fam2;
		this.fam3 = fam3;
		this.fam4 = fam4;
	}
	
	public FamilyVO(String user_id)
	{
		super();
		this.user_id = user_id;
		this.fam1 = fam1;
		this.fam2 = fam2;
		this.fam3 = fam3;
		this.fam4 = fam4;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getFam1() {
		return fam1;
	}

	public void setFam1(String fam1) {
		this.fam1 = fam1;
	}

	public String getFam2() {
		return fam2;
	}

	public void setFam2(String fam2) {
		this.fam2 = fam2;
	}

	public String getFam3() {
		return fam3;
	}

	public void setFam3(String fam3) {
		this.fam3 = fam3;
	}

	public String getFam4() {
		return fam4;
	}

	public void setFam4(String fam4) {
		this.fam4 = fam4;
	}

}
