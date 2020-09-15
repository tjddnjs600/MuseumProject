package com.myweb.ctrl;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.domain.MemberVO;
import com.myweb.service.MemberService;

@Controller
@RequestMapping("/member/**")
public class MemberCtrl {
	private static Logger log = LoggerFactory.getLogger(MemberCtrl.class);
	
	@Inject
	MemberService msv;
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("login")
	public String login(MemberVO mvo, RedirectAttributes reAttr, HttpSession ses) {
		String destPage = "";
		MemberVO minfo = msv.login(mvo);
		if (minfo != null) {
			ses.setAttribute("adInfo", minfo);
			reAttr.addFlashAttribute("msg", minfo.getAdnick()+"님 로그인 되었습니다.");
			destPage = "redirect:/";
		} else {
			reAttr.addFlashAttribute("msg", "아이디나 비밀번호를 확인해 주세요");
			destPage = "redirect:/member/login";
		} 
		return destPage;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession ses) {
		ses.invalidate();
		return "redirect:/";
	}
} 
  