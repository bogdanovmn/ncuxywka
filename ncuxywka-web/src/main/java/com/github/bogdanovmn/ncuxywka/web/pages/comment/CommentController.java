package com.github.bogdanovmn.ncuxywka.web.pages.comment;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.common.spring.jpa.pagination.PageMeta;
import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository.CreoComment;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/comments")
class CommentController extends AbstractVisualController {
	@Autowired
	private CommentService commentService;

	@GetMapping
	ModelAndView creoList(
		@RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
		@RequestParam(name = "from", required = false) Integer fromUserId,
		@RequestParam(name = "to"  , required = false) Integer toUserId
	) {
		ContentPage<CreoComment> comments = commentService.creoComments(
			fromUserId,
			toUserId,
			PageMeta.builder()
				.number(page)
				.parameter("from", fromUserId)
				.parameter("to", toUserId)
				.baseUrl("/comments?")
			.build()
		);
		return new ViewTemplate("creo_comments")
			.with("comments", comments.content())
			.with("paginationBar", comments.paginationBar())
			.modelAndView();
	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.COMMENTS;
	}
}
