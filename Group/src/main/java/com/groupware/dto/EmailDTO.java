package com.groupware.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDTO {
	private String senderName;// �߽���
	private String senderMail; //�߽��� �̸���
	private String receiveMail; //������ �̸���
	private String title; //����
	private String content; //����
	private Date registerDate;//�����

	

}
