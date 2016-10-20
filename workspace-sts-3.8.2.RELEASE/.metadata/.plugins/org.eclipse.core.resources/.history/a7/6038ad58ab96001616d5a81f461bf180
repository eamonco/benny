package mvc_course.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcome {
	
	@RequestMapping(value="index.mvc")
	public String landingPage(Model m){
		m.addAttribute("msg", "Hello from the controller");
		return "hello";
	}
}
