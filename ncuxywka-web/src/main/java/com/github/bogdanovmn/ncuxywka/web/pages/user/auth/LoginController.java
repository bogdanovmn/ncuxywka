package com.github.bogdanovmn.ncuxywka.web.pages.user.auth;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.Redirect;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractMinVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
class LoginController extends AbstractVisualController {
	@GetMapping("/login")
	ModelAndView form(Model model, String error) {
		if (!getUser().isGuest()) {
			LOG.debug("User {} already logged in", getUser().getName());
			return new Redirect("/").modelAndView();
		}

		if (error != null) {
			model.addAttribute("customError", "Попробуйте еще разок");
		}

		return new ModelAndView("login", model.asMap());
	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.LOGIN;
	}
}
