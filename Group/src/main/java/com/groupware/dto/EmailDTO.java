package com.groupware.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDTO {
	private String senderName;// 발신인
	private String senderMail; //발신자 이메일
	private String receiveMail; //수신자 이메일
	private String title; //제목
	private String content; //내용
	private Date registerDate;//등록일

	

}
