package com.github.bogdanovmn.ncuxywka.web.comment;

import com.github.bogdanovmn.ncuxywka.model.entity.Comment;
import com.github.bogdanovmn.ncuxywka.model.entity.User;
import lombok.RequiredArgsConstructor;

import java.time.LocalDateTime;

@RequiredArgsConstructor
public class CommentView {
	private final Comment comment;

	public int id() {
		return comment.getId();
	}

	public String message() {
		return comment.getMessage();
	}

	public String authorName() {
		return comment.getAlias() != null
			? comment.getAlias()
			: comment.getUser().getName();
	}

	public User user() {
		return comment.getUser();
	}

	public LocalDateTime created() {
		return comment.getCreated();
	}
}
