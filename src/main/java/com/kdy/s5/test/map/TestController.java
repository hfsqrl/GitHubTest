package com.kdy.s5.test.map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test/**")
public class TestController {
	
	@GetMapping("mapTest")
	public ModelAndView mapTest() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("map test");
		mv.setViewName("test/mapTest");
		
		return mv;
	}
	

}
