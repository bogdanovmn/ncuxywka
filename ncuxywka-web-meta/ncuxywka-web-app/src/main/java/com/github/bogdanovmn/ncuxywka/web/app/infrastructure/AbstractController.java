package com.github.bogdanovmn.ncuxywka.web.app.infrastructure;

import com.github.bogdanovmn.ncuxywka.model.entity.User;
import com.github.bogdanovmn.ncuxywka.web.app.infrastructure.config.security.ProjectSecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class AbstractController {
	@Autowired
	private ProjectSecurityService securityService;

	public User getUser() {
		return securityService.getLoggedInUser();
	}

	@ModelAttribute("isAdmin")
	public boolean isAdmin() {
		User user = getUser();
		return user != null && user.getRoles().stream().anyMatch(x -> x.getName().equals("Admin"));
	}
}
