package com.groupware.service;

import java.util.List;

import com.groupware.dto.EmailDTO;

public interface EmailService {
	
	
	public void send(EmailDTO email);
	
	public List<EmailDTO> getList();
	
	
	
	public List<EmailDTO> receiveList(EmailDTO dto);//받은메일함

	public List<EmailDTO> sendList(EmailDTO dto);//보낸 메일함

	public EmailDTO detail(int mailnum);//상세보기
	public void readupdate(int mailnuml); //수신확인




	void reply(EmailDTO email);//답장


	


	
}
