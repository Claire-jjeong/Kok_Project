package com.smhrd;

import java.util.Date;

public class AdVO {

	private int ad_seq;
	private int good_seq;
	private Date s_date;
	private Date e_date;
	private String adloading_yn;
	private int vac_seq;
	
	
	public int getAd_seq() {
		return ad_seq;
	}
	public void setAd_seq(int ad_seq) {
		this.ad_seq = ad_seq;
	}
	public int getGood_seq() {
		return good_seq;
	}
	public void setGood_seq(int good_seq) {
		this.good_seq = good_seq;
	}
	public Date getS_date() {
		return s_date;
	}
	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}
	public Date getE_date() {
		return e_date;
	}
	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}
	public String getAdloading_yn() {
		return adloading_yn;
	}
	public void setAdloading_yn(String adloading_yn) {
		this.adloading_yn = adloading_yn;
	}
	public int getVac_seq() {
		return vac_seq;
	}
	public void setVac_seq(int vac_seq) {
		this.vac_seq = vac_seq;
	}
	
	
}
