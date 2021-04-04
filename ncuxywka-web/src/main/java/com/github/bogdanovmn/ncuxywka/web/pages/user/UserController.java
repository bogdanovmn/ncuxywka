package com.github.bogdanovmn.ncuxywka.web.pages.user;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
class UserController extends AbstractVisualController {
	@Autowired
	private UserService userService;


	@GetMapping("{userId}")
	ModelAndView user(@PathVariable Integer userId) {
		UserPage userPage = userService.userView(userId);
		return new ViewTemplate("user")
			.with("user", userPage)
			.with("canSendPersonalMessage", !isGuest() && !getUser().getId().equals(userId))
			.with("isCurrentUser", !isGuest() && !getUser().getId().equals(userId))
			.with("jsPlotRequired", true)
			.modelAndView();
	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.NONE;
	}
}
