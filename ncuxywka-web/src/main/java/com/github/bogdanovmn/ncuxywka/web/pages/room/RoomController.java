package com.github.bogdanovmn.ncuxywka.web.pages.room;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.common.spring.jpa.pagination.PageMeta;
import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.model.entity.RoomType;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import com.github.bogdanovmn.ncuxywka.web.pages.comment.CommentView;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/rooms")
@RequiredArgsConstructor
class RoomController extends AbstractVisualController {
	private final RoomService roomService;

	@GetMapping("/{room}")
	ModelAndView get(
		@PathVariable("room") RoomType room,
		@RequestParam(name = "page", required = false, defaultValue = "1") Integer page
	) {
		ContentPage<CommentView> comments = roomService.comments(
			room,
			PageMeta.builder()
				.number(page)
				.baseUrl(
					String.format("/rooms/%s?", room.getId())
				)
			.build()
		);
		return new ViewTemplate("rooms/" + room.getId())
			.with("comments",      comments.content())
			.with("paginationBar", comments.paginationBar())
			.with("postButtonCaption", room.getPostButtonCaption())
			.modelAndView();
	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.FAQ;
	}
}
