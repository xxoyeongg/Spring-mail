package com.groupware.service;



import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupware.dto.MemberDTO;

//����
public interface MemberService {

	//�α���

	
	//ȸ������
	public void register(MemberDTO member);
	
	//ȸ������
	public boolean memberdelete(String mem_no);
	
	//ȸ�� ���� ����
	public boolean memberupdate(MemberDTO member);


	int login(MemberDTO member) throws Exception;





}
