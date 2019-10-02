package com.github.bogdanovmn.ncuxywka.web.comment;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository.CreosComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
class CommentService {
	@Autowired
	private CommentRepository commentRepository;

	ContentPage<CreosComment> allCreosComments(Integer page) {
		return new ContentPage<>(
			commentRepository.getAllCreosComments(
				PageRequest.of(page, 20)
			),
			"/comments?"
		);
	}
}
