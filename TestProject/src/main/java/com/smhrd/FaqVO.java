package com.smhrd;

public class FaqVO {

	private int faq_seq ;
	private String question;
	private String reply;
	private String user_id;
	
	public int getFaq_seq() {
		return faq_seq;
	}
	public void setFaq_seq(int faq_seq) {
		this.faq_seq = faq_seq;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
}
