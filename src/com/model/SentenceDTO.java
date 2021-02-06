package com.model;

public class SentenceDTO {
	private String id;
	private String sentence;
	private String date;
	
	public SentenceDTO(String id, String sentence, String date) {
		super();
		this.id = id;
		this.sentence = sentence;
		this.date = date;
	}
	
	public SentenceDTO(String id, String sentence) {
		super();
		this.id = id;
		this.sentence = sentence;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSentence() {
		return sentence;
	}
	public void setSentence(String sentence) {
		this.sentence = sentence;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
