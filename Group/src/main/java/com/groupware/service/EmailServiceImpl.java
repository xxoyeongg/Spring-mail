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


	@Override
	public List<EmailDTO> receiveList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.receiveList(dto);
	}

	@Override
	public List<EmailDTO> sendList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.sendList(dto);
	}

	@Override
	public EmailDTO detail(String title) {
		// TODO Auto-generated method stub
		return mapper.detail(title);
	}

	@Override
	public void reply(EmailDTO email) {
		
		mapper.reply(email);
	}






}
