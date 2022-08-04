package com.groupware.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.groupware.dto.EmailDTO;
import com.groupware.mapper.EmailMapper;
import com.groupware.service.EmailService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EmailServiceImpl implements EmailService{
	@Setter(onMethod_ =@Autowired )	
	private EmailMapper mapper;	
	

	// 메일 쓰기
	@Override
	public void send(EmailDTO email) {
		log.info("register......."+email);
		mapper.insert(email);
	}
	
	//전체 메일 읽기

	@Override
	public List<EmailDTO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	//받은메일 리스트
	@Override
	public List<EmailDTO> receiveList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.receiveList(dto);
	}
	//보낸메일 리스트
	@Override
	public List<EmailDTO> sendList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.sendList(dto);
	}
	//상세보기
	@Override
	public EmailDTO detail(int mailnum) {
		// TODO Auto-generated method stub
		return mapper.detail(mailnum);
	}
	//읽음 여부 확인 
	@Override
	public void readupdate(int mailnum) {
		// TODO Auto-generated method stub
		mapper.readupdate(mailnum);
		
	}
	//메일 안읽은 리스트
	@Override
	public List<EmailDTO> unreadlist(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.unreadlist(dto);
	}




	//메일 답장
	@Override
	public void reply(EmailDTO email) {
		
		mapper.reply(email);
	}
	//안읽은 메일의 갯수
	@Override
	public int count(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.count(dto);
	}

	

	//게시글 삭제 (안보이게)
	@Override
	public void delupdate(int mailnum) {
		// TODO Auto-generated method stub
		mapper.delupdate(mailnum);
		
	}

	@Override
	public List<EmailDTO> deleteview(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.deleteview(dto);
	}

//	@Override
//	public void delete(Integer mailnum) {
//		// TODO Auto-generated method stub
//		mapper.delete(mailnum);
//		
//	}


	//전송취소 delete
	@Override
	public int revoke(int mailnum) {
		// TODO Auto-generated method stub
		return mapper.revoke(mailnum);
		
		
	}




}



