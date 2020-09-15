package com.myweb.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.domain.BookingVO;
import com.myweb.domain.EventVO;
import com.myweb.service.BookingService;

@Controller
@RequestMapping("/booking/**")
public class BookingCtrl {
	private static Logger log = LoggerFactory.getLogger(BookingCtrl.class);
	
	@Inject
	BookingService bvc;
	
	@GetMapping("/book")
	public void booking(EventVO evo, Model model) {
		model.addAttribute("evo", evo);
	}
	
	@PostMapping("/book")
	public String booking(BookingVO bvo) {
		bvc.booking(bvo);
		return "redirect:/booking/chkBooking";
	}
	
	@GetMapping("/rmEvent")
	public void rmEvent() {}
	
	
	@GetMapping("/chkBooking")
	public void chkBooking() {}
	
	
	@GetMapping("/bdetail")
	public String bdetail(BookingVO bvo, RedirectAttributes reAttr, Model model) {
		List<BookingVO> blist = bvc.getBook(bvo);
		
		if (blist.size() > 0) {
			model.addAttribute("blist", blist);
			return "/booking/bdetail";
		} else {
			reAttr.addFlashAttribute("msg", "이름이나 휴대폰번호를 확인해 주세요");
			return "redirect:/booking/chkBooking";
		}
	}
	

	
	@ResponseBody
	@GetMapping("/bmodify")
	public String bmodify(BookingVO bvo) {
		String isOk = Integer.toString(bvc.modify(bvo));
		return isOk;
	}
	
	@ResponseBody
	@GetMapping("/bremove")
	public String bremove(@RequestParam("bno") int bno, BookingVO bvo) {
		return Integer.toString(bvc.remove(bno, bvo));
	}
	
}
