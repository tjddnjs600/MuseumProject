package com.myweb.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sub/**")
public class SubCtrl {
	private static Logger log = LoggerFactory.getLogger(SubCtrl.class);
	
	@GetMapping("/eventSub")
	public void eventSub() {}
	@GetMapping("/eventSub2")
	public void eventSub2() {}
	@GetMapping("/introSub")
	public void introSub() {}
	
}
