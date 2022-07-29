package com.groupware.service;

import java.util.List;

import com.groupware.dto.EmailDTO;

public interface EmailService {
	public void send(EmailDTO email);
	
	public List<EmailDTO> getList();
	
	
	
	public List<EmailDTO> receiveList(EmailDTO dto);

	public List<EmailDTO> sendList(EmailDTO dto);

	public EmailDTO detail(String title);//상세보기

	


	
}
