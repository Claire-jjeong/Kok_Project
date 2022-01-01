package com.smhrd;

public class VaccineVO {

	private String vac_seq;
	private String vac_name;
	private String vac_disease;
	private String vac_code;
	
	
	public VaccineVO(String vac_seq, String vac_name, String vac_disease, String vac_code) {
		super();
		this.vac_seq = vac_seq;
		this.vac_name = vac_name;
		this.vac_disease = vac_disease;
		this.vac_code = vac_code;
	}
	public String getVac_seq() {
		return vac_seq;
	}
	public void setVac_seq(String vac_seq) {
		this.vac_seq = vac_seq;
	}
	public String getVac_name() {
		return vac_name;
	}
	public void setVac_name(String vac_name) {
		this.vac_name = vac_name;
	}
	public String getVac_disease() {
		return vac_disease;
	}
	public void setVac_disease(String vac_disease) {
		this.vac_disease = vac_disease;
	}
	public String getVac_code() {
		return vac_code;
	}
	public void setVac_code(String vac_code) {
		this.vac_code = vac_code;
	}
	
	
}
