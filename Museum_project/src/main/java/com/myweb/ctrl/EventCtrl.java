package com.myweb.ctrl;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myweb.domain.EventVO;
import com.myweb.service.BookingService;
import com.myweb.service.EventService;

@Controller
@RequestMapping("/event/**")
public class EventCtrl {
	private static Logger log = LoggerFactory.getLogger(BookingCtrl.class);
	
	@Inject
	EventService evc;
	
	@GetMapping("/addevent")
	public void addEvent() {}
	
	@PostMapping("/addevent")
	public String addEvent(EventVO evo) {
		evc.addEvent(evo);
		return "redirect:/event/calendar";
	}
	

	@ResponseBody
	@GetMapping(value = "/getEvent",
			produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<EventVO>> price(){
		List<EventVO> elist = evc.getEvent();
		for (int i = 0; i < elist.size(); i++) {
			log.info(elist.get(i).getEmember()+" 인원수");
		}
		
		return new ResponseEntity<List<EventVO>>(evc.getEvent(),HttpStatus.OK);
	}
	
	@ResponseBody
	@GetMapping("/chkMem")
	public String chkMem(@RequestParam("title") String title) {
		String mem = Integer.toString(evc.chkMember(title));
		return mem;
	}
	
	
	@GetMapping("/rmEvent")
	public void rmEvent() {}
	
	@GetMapping("/calendar")
	public void calendar() {}
	
	
}
