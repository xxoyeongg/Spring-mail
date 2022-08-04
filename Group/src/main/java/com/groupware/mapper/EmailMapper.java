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

	public List<EmailDTO> unreadlist(EmailDTO dto);
	
	public int count(EmailDTO dto);

//	public  void delete(String mailnum); //게시글 삭제

//	public void delupdate(int mailnum); //게시글 안보이게

	public List<EmailDTO> deleteview(EmailDTO dto);//삭제함 

	public int revoke(int mailnum); //게시글 전송 취소

	public void delupdate(int mailnum);  //게시글 안보이게



	
	

	
	
}

