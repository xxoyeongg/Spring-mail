package com.groupware.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupware.dto.EmailDTO;
import com.groupware.service.EmailService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/email/*") 
public class EmailController {
	@Setter(onMethod_ = {@Autowired} )
	public EmailService service;

	
	
	//메일 리스트 (메인)
	@GetMapping("/MailList")
	public void MailList(Model model) {
		log.info("list");		
		model.addAttribute("MailList",service.getList());
	}

	//메일 쓰기
	@GetMapping("/write")
	public String write(HttpSession session,Model m) {
		
		//보내는 사람  고정
		EmailDTO dto = new EmailDTO();
		dto.setSendermail("xo@mit.com");
		m.addAttribute("mail", dto);
		return "email/write";
		
	}
	//메일 전송 프로세스
	@PostMapping("/writepro")
	public String writepro(EmailDTO email,RedirectAttributes rttr) {
		log.info("register 메일 등록:"+email);
		service.send(email);
		rttr.addFlashAttribute("result",email.getSendermail());
	
		return "redirect:/email/MailList";
	}
	
	//받은  메일 함 
	@GetMapping("/receiveList")
	public String recivelist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setReceivemail("xo@mit.com");
		m.addAttribute("ReceiveList", service.receiveList(dto));
		return "email/MailReceiveList";
	}
	
	//받은 메일함의 주인  멤버테이블에서 가져올게요

	
	//보낸 메일함
	@GetMapping("/sendList")
	public String sendlist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setSendermail("xo@mit.com");
		m.addAttribute("SendList", service.sendList(dto));
		return "email/MailSendList";
	}
	
	//제목 클릭시 상세페이지 이동 ,읽음 처리 업데이트
	@GetMapping("/detail")
	public String getdatail(Model m,int mailnum) {
		service.readupdate(mailnum);
		EmailDTO dto= service.detail(mailnum);//상세보기		
		m.addAttribute("data",dto);
		return "email/MailDetail";
	}
	


	
	//안읽은 메일함 
	@GetMapping("/unreadList")
	public String unreadlist(HttpSession session,Model m) {
		EmailDTO dto = new EmailDTO();
		dto.setReceivemail("xo@mit.com");
		m.addAttribute("Unreadlist", service.unreadlist(dto));
		m.addAttribute("Unreadcount", service.count(dto)); //메일 수 카운트
		return "email/UnreadMailList";
	}
	
	
	
	
	//답장 기능 
	@GetMapping("/reply")
	public String reply(HttpSession session,@RequestParam String receivemail) {
		session.setAttribute("receiveMail", receivemail);
		return "email/ReplyWrite";
	}
	//답장 프로세스
	@PostMapping("/replypro")
	public String replypro(EmailDTO email,RedirectAttributes rttr,Model m) {
		log.info("register:"+email);
	
		service.reply(email);
		rttr.addFlashAttribute("result",email.getReceivemail());
		return "redirect:/email/MailList";
	}
	
	//게시글 확인 하면 읽음처리 업데이트
	
	
	//메일 삭제
	
	
}
