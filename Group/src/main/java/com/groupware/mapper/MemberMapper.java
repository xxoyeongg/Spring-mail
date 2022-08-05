package com.groupware.mapper;

import com.groupware.dto.MemberDTO;

//����
public interface MemberMapper {
	
	
	//�α���
	public int login(MemberDTO member) throws Exception;
	
	public MemberDTO memdetail(MemberDTO member);
	//ȸ������
	public void register(MemberDTO member)throws Exception;
	
	//ȸ������
	public String memberdrop(String mem_id);
	//ȸ�� ����
	public int memberupdate(MemberDTO member);
	//��й�ȣ üũ
	public boolean checkpw(String mem_pw);
	//���������� info
	public MemberDTO memberinfo(String mem_id);
	
}


