package com.groupware.service;



import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupware.dto.MemberDTO;
import com.groupware.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

//개인
@Log4j
@Service
public class MemberServiceImlp implements MemberService {
	
	@Autowired
	private MemberMapper mapper;	
	
	@Autowired
	private HttpSession session;
	
	

	//로그인 member -> 내가 입력  / dto->db에서 가져옴
	@Override
	public int login(MemberDTO member) throws Exception {
		MemberDTO dto =  mapper.memdetail(member);
		if(mapper.login(member)==1) {
			System.out.println(dto);
			session.setAttribute("mem_id", dto.getMem_id());			
			session.setAttribute("mem_nm", dto.getMem_nm());
			session.setAttribute("mem_eml", dto.getMem_eml());
			session.setAttribute("mem_no", String.valueOf (dto.getMem_no()));//정수형 형변환
			return 1; 
		}else {
			return 0; 
		}
		
		
	}
	//회원가입
	@Override
	public void register(MemberDTO member) {
		// TODO Auto-generated method stub
	}
	//회원 삭제
	@Override
	public boolean memberdelete(String mem_no) {
		// TODO Auto-generated method stub
		return false;
	}
	//정보수정
	@Override
	public boolean memberupdate(MemberDTO member) {
		// TODO Auto-generated method stub
		return false;
	}

}
