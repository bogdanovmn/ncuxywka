package com.github.bogdanovmn.ncuxywka.web.mainpage;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import com.github.bogdanovmn.ncuxywka.web.news.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
class MainPageController extends AbstractVisualController {
	@Autowired
	private NewsService newsService;
	@Autowired
	private MainPageService mainPageService;

	@Value("${pages.main.new-users-count:3}")
	private int newUsersCount;
	@Value("${pages.main.news-count:2}")
	private int newsCount;
	@Value("${pages.main.creo-authors-count:10}")
	private int creoAuthorsCount;

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.MAIN;
	}

	@GetMapping
	ModelAndView mainPage() {
		return new ViewTemplate("main_page")
			.with("news", newsService.last(newsCount))
			.with("newUsers", mainPageService.newActiveUsers(newUsersCount))
			.with("lastCreos", mainPageService.lastCreos(creoAuthorsCount))
			.modelAndView();
	}
}
