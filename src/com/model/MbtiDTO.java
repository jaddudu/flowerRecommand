package com.model;

public class MbtiDTO {
	private String id;
	private String mbti_result;
	private String date;
	private String img;
	
	

	

	public MbtiDTO(String mbti_result, String date, String img) {
		super();
		this.mbti_result = mbti_result;
		this.date = date;
		this.img = img;
	}

	public MbtiDTO(String id, String mbti_result) {
		super();
		this.id = id;
		this.mbti_result = mbti_result;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMbti_result() {
		return mbti_result;
	}

	public void setMbti_result(String mbti_result) {
		this.mbti_result = mbti_result;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}
