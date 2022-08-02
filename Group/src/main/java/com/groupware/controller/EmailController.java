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

	
	
	//���� ����Ʈ (����)
	@GetMapping("/MailList")
	public void MailList(Model model) {
		log.info("list");		
		model.addAttribute("MailList",service.getList());
	}

	//���� ����
	@GetMapping("/write")
	public String write(HttpSession session,Model m) {
		
		//������ ���  ����
		EmailDTO dto = new EmailDTO();
		dto.setSendermail("xo@mit.com");
		m.addAttribute("mail", dto);
		return "email/write";
		
	}
	//���� ���� ���μ���
	@PostMapping("/writepro")
	public String writepro(EmailDTO email,RedirectAttributes rttr) {
		log.info("register ���� ���:"+email);
		service.send(email);
		rttr.addFlashAttribute("result",email.getSendermail());
	
		return "redirect:/email/MailList";
	}
	
	//����  ���� �� 
	@GetMapping("/receiveList")
	public String recivelist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setReceivemail("xo@mit.com");
		m.addAttribute("ReceiveList", service.receiveList(dto));
		return "email/MailReceiveList";
	}
	
	//���� �������� ����  ������̺��� �����ðԿ�

	
	//���� ������
	@GetMapping("/sendList")
	public String sendlist(HttpSession session,Model m) {
		
		EmailDTO dto = new EmailDTO();
		dto.setSendermail("xo@mit.com");
		m.addAttribute("SendList", service.sendList(dto));
		return "email/MailSendList";
	}
	
	//���� Ŭ���� �������� �̵� ,���� ó�� ������Ʈ
	@GetMapping("/detail")
	public String getdatail(Model m,int mailnum) {
		service.readupdate(mailnum);
		EmailDTO dto= service.detail(mailnum);//�󼼺���		
		m.addAttribute("data",dto);
		return "email/MailDetail";
	}
	


	
	//������ ������ 
	@GetMapping("/unreadList")
	public String unreadlist(HttpSession session,Model m) {
		EmailDTO dto = new EmailDTO();
		dto.setReceivemail("xo@mit.com");
		m.addAttribute("Unreadlist", service.unreadlist(dto));
		m.addAttribute("Unreadcount", service.count(dto)); //���� �� ī��Ʈ
		return "email/UnreadMailList";
	}
	
	
	
	
	//���� ��� 
	@GetMapping("/reply")
	public String reply(HttpSession session,@RequestParam String receivemail) {
		session.setAttribute("receiveMail", receivemail);
		return "email/ReplyWrite";
	}
	//���� ���μ���
	@PostMapping("/replypro")
	public String replypro(EmailDTO email,RedirectAttributes rttr,Model m) {
		log.info("register:"+email);
	
		service.reply(email);
		rttr.addFlashAttribute("result",email.getReceivemail());
		return "redirect:/email/MailList";
	}
	
	//�Խñ� Ȯ�� �ϸ� ����ó�� ������Ʈ
	
	
	//���� ����
	
	
}
