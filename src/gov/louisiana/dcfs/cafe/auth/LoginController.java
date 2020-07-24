package gov.louisiana.dcfs.cafe.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;

@Controller
public class LoginController {
	
	@GetMapping(path = "/")
    public ModelAndView index() throws JsonProcessingException {
		final ModelAndView modelAndView = new ModelAndView("index", "loginForm", new LoginForm());
		return modelAndView;
    }
	
	@PostMapping(path = "/login")
	public ModelAndView create(@ModelAttribute("loginForm") LoginForm loginForm,
			final RedirectAttributes redirectAttributes) {
		final ModelAndView modelAndView = new ModelAndView("redirect:/home");
		return modelAndView;
	}
	
	@GetMapping(path = "/home")
	public ModelAndView loadHomePage() {
		final ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		return modelAndView;
	}
}
