package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
class UserListController extends AbstractVisualController {
	@Autowired
	private UsersListService usersListService;

	@GetMapping
	ModelAndView userList() {
		UsersByGroups users = usersListService.allUsersByGroups();
		return new ViewTemplate("users")
			.with("users", users)
			.modelAndView();
	}

//	@GetMapping("{userId}")
//	ModelAndView user(@PathVariable Integer userId) {
//		UserView userView = userService.userView(userId);
//		return new ViewTemplate("creo_view")
//			.with("user", userView)
//			.modelAndView();
//	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.NONE;
	}
}
