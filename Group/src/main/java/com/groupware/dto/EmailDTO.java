package com.groupware.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDTO {
	private int mailnum;//���Ϲ�ȣ
	private String sendername;// �߽���
	private String sendermail; //�߽��� �̸���
	private String receivemail; //������ �̸���
	private String title; //����
	private String content; //����
	private Date registerDate;//�����
	private int readck; //�������� üũ

	

}
