package com.github.bogdanovmn.ncuxywka.web.pages.comment;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.common.spring.jpa.pagination.PageMeta;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository.CreoComment;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class CommentService {
	private final CommentRepository commentRepository;

	ContentPage<CreoComment> allCreosComments(PageMeta page) {
		return new ContentPage<>(
			commentRepository.getAllCreosComments(
				PageRequest.of(page.getNumber() - 1, 20)
			),
			page
		);
	}
}
