package com.groupware.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	
	
	//���� ����Ʈ (����)
	@GetMapping("/MailList")
	public void MailList(Model model) {
		log.info("list");		
		model.addAttribute("MailList",service.getList());
	}

	//���� ����
	@GetMapping("/write")
	public String write() {
		return "email/write";
		
	}
	//���� ���� ���μ���
	@PostMapping("/writepro")
	public String writepro(EmailDTO email,RedirectAttributes rttr) {
		log.info("register:"+email);
		service.send(email);
		rttr.addFlashAttribute("result",email.getSenderName());
	
		return "redirect:/email/MailList";
	}
	
	//����  ���� �� 
	@GetMapping("/receiveList")
	public String recivelist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setReceiveMail("xo@mit.com");
		m.addAttribute("ReceiveList", service.receiveList(dto));
		return "email/MailReceiveList";
	}
	
	//���� �������� ����  ������̺��� �����ðԿ�

	
	//���� ������
	@GetMapping("/sendList")
	public String sendlist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setSenderMail("xo@mit.com");
		m.addAttribute("SendList", service.sendList(dto));
		return "email/MailSendList";
	}
	
	//���� Ŭ���� �������� �̵�
	@GetMapping("/detail")
	public String getdatail(Model m,String title) {
		EmailDTO dto= service.detail(title);
		m.addAttribute("data",dto);
		return "email/MailDetail";
	}
	//���� ��� 
	@GetMapping("/reply")
	public String reply(HttpSession session,@RequestParam String receiveMail) {
		session.setAttribute("receiveMail", receiveMail);
		return "email/ReplyWrite";
	}
	//���� ���μ���
	@PostMapping("replypro")
	public String replypro(EmailDTO email,RedirectAttributes rttr,Model m) {
		log.info("register:"+email);
	
		service.reply(email);
		rttr.addFlashAttribute("result",email.getReceiveMail());
		return "redirect:/email/MailList";
	}
	
	//�Խñ� �ӽ����� 
	
	//���� ����
	
	
}
