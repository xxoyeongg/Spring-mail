package com.groupware.mapper;

import java.util.List;

import com.groupware.dto.EmailDTO;

public interface EmailMapper {



	public List<EmailDTO> getList();
	
	void insert (EmailDTO email);

	public List<EmailDTO> sendList(EmailDTO dto);
	
	public List<EmailDTO> receiveList(EmailDTO dto);


	public EmailDTO detail(int mailnum);

	public EmailDTO reply(String senderMail);

	public void reply(EmailDTO email);

	public void readupdate(int mailnum);

	
	

	
	
}

