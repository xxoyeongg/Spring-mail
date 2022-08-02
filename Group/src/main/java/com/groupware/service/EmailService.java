package com.groupware.service;

import java.util.List;

import com.groupware.dto.EmailDTO;

public interface EmailService {
	
	
	public void send(EmailDTO email); //메일 전송
	
	public List<EmailDTO> getList(); //전체 메일 확인 
	
	
	
	public List<EmailDTO> receiveList(EmailDTO dto);//받은메일함
	public List<EmailDTO> sendList(EmailDTO dto);//보낸 메일함

	public EmailDTO detail(int mailnum);//상세보기
	public void readupdate(int mailnuml); //수신확인

	public void reply(EmailDTO email);//답장

	public List<EmailDTO> unreadlist(EmailDTO dto);// 안 읽은 메일함
	
	public int count(EmailDTO dto);//안읽은 메일 수


	


	
}
