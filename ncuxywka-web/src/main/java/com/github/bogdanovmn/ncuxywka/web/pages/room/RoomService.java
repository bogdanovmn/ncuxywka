package com.github.bogdanovmn.ncuxywka.web.pages.room;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.common.spring.jpa.pagination.PageMeta;
import com.github.bogdanovmn.ncuxywka.model.entity.Comment;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.RoomType;
import com.github.bogdanovmn.ncuxywka.web.pages.comment.CommentView;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class RoomService {
	@Value("${pages.common.comments-per-page:20}")
	private int commentsPerPage;

	private final CommentRepository commentRepository;

	public ContentPage<CommentView> comments(RoomType room, PageMeta page) {
		Page<Comment> comments = commentRepository.getRoomComments(
			room.getId(),
			PageRequest.of(page.getNumber() - 1, commentsPerPage)
		);
		long totalComments = comments.getTotalElements();
		int[] i = {0};
		return new ContentPage<>(
			comments.map(
				comment -> new CommentView(
					comment,
					totalComments - (long) commentsPerPage * (page.getNumber() - 1) - i[0]++
				)
			),
			page
		);
	}
}
