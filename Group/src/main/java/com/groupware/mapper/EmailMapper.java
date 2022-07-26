package com.groupware.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.groupware.dto.EmailDTO;

public interface EmailMapper {



	public List<EmailDTO> getList();
	
	void insert (EmailDTO email);//메일쓰기

	
	public List<EmailDTO> sendList(EmailDTO dto);//보낸메일함
	
	public List<EmailDTO> receiveList(EmailDTO dto);//받은메일함


	public EmailDTO detail(int mailnum);//상세보기

	public EmailDTO reply(String senderMail);//답장

	public void reply(EmailDTO email);

	public void readupdate(int mailnum);//읽음여부 확인

	public List<EmailDTO> unreadlist(EmailDTO dto);//안읽은 메일함
	
	public int count(EmailDTO dto);

//	public  void delete(String mailnum); //게시글 삭제

//	public void delupdate(int mailnum); //게시글 안보이게

	public List<EmailDTO> deleteview(EmailDTO dto);//삭제함 

	public int revoke(int mailnum); //게시글 전송 취소

	public void delupdate(int mailnum);  //게시글 안보이게



	
	

	
	
}

