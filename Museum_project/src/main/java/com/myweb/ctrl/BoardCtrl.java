package com.myweb.ctrl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myweb.domain.NoticeVO;
import com.myweb.service.BoardService;

@Controller
@RequestMapping("/board/**")
public class BoardCtrl {
	private static Logger log = LoggerFactory.getLogger(BoardCtrl.class);
	
	@Inject
	BoardService bsv;
	
	@GetMapping("/notice/regist")
	public void regist() {}
	
	@PostMapping("/notice/regist")
	public String regist(NoticeVO nvo) {
		int isOk = bsv.addnotice(nvo);
		return "redirect:/board/notice/nlist";
	}
	
	@GetMapping("/notice/nlist")
	public void nlist(Model model) {
		model.addAttribute("nlist", bsv.getNList());
	}
	
	@ResponseBody
	@GetMapping("/notice/upCount")
	public String upCount(@RequestParam("nno") int nno) {
		return Integer.toString(bsv.nUpCount(nno));
	}
	
	@GetMapping("/notice/detail")
	public void detail(@RequestParam("nno") int nno, Model model) {
		model.addAttribute("nvo", bsv.nSelectOne(nno));
	}
}
