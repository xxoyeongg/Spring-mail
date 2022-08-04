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
	

	// ���� ����
	@Override
	public void send(EmailDTO email) {
		log.info("register......."+email);
		mapper.insert(email);
	}
	
	//��ü ���� �б�

	@Override
	public List<EmailDTO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	//�������� ����Ʈ
	@Override
	public List<EmailDTO> receiveList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.receiveList(dto);
	}
	//�������� ����Ʈ
	@Override
	public List<EmailDTO> sendList(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.sendList(dto);
	}
	//�󼼺���
	@Override
	public EmailDTO detail(int mailnum) {
		// TODO Auto-generated method stub
		return mapper.detail(mailnum);
	}
	//���� ���� Ȯ�� 
	@Override
	public void readupdate(int mailnum) {
		// TODO Auto-generated method stub
		mapper.readupdate(mailnum);
		
	}
	//���� ������ ����Ʈ
	@Override
	public List<EmailDTO> unreadlist(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.unreadlist(dto);
	}




	//���� ����
	@Override
	public void reply(EmailDTO email) {
		
		mapper.reply(email);
	}
	//������ ������ ����
	@Override
	public int count(EmailDTO dto) {
		// TODO Auto-generated method stub
		return mapper.count(dto);
	}

	

	//�Խñ� ���� (�Ⱥ��̰�)
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


	//������� delete
	@Override
	public int revoke(int mailnum) {
		// TODO Auto-generated method stub
		return mapper.revoke(mailnum);
		
		
	}




}



