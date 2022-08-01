package com.groupware.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDTO {
	private int mailnum;//메일번호
	private String sendername;// 발신인
	private String sendermail; //발신자 이메일
	private String receivemail; //수신자 이메일
	private String title; //제목
	private String content; //내용
	private Date registerDate;//등록일
	private int readck; //읽음여부 체크

	

}
