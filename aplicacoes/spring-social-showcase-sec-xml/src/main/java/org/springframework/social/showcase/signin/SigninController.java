package org.springframework.social.showcase.signin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SigninController {

	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String signin(Model model) {
		model.addAttribute("teste", "Bot�o");
		return "signin/signin";
	}
}
