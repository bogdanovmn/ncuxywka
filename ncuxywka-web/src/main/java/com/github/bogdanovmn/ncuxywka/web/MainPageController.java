package com.github.bogdanovmn.ncuxywka.web;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import com.github.bogdanovmn.ncuxywka.web.user.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
class MainPageController extends AbstractVisualController {
	@Autowired
	private RegistrationService registrationService;
	@Value("${main-page.last-users-count:3}")
	private int lastUsersCount;

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.MAIN;
	}

	@GetMapping
	ModelAndView mainPage(Model model) {
		return new ViewTemplate("main_page")
			.with("news", null)
			.with("lastActiveUsers", registrationService.lastActiveUsers(lastUsersCount))
			.modelAndView();
	}
}
