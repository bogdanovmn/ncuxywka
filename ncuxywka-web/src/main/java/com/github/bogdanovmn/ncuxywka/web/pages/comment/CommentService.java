package com.github.bogdanovmn.ncuxywka.web.pages.comment;

import com.github.bogdanovmn.common.spring.jpa.pagination.ContentPage;
import com.github.bogdanovmn.common.spring.jpa.pagination.PageMeta;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CommentRepository.CreoComment;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class CommentService {
	@Value("${pages.common.comments-per-page:20}")
	private int commentsPerPage;

	private final CommentRepository commentRepository;

	ContentPage<CreoComment> creoComments(Integer fromUserId, Integer toUserId, PageMeta page) {
		PageRequest pageRequest = PageRequest.of(page.getNumber() - 1, commentsPerPage);
		return new ContentPage<>(
			fromUserId == null && toUserId == null
				? commentRepository.creoComments(pageRequest)
				: fromUserId != null && toUserId != null
					? commentRepository.creoCommentsFromTo(fromUserId, toUserId, pageRequest)
					: fromUserId != null
						? commentRepository.creoCommentsFrom(fromUserId, pageRequest)
						: commentRepository.creoCommentsTo(toUserId, pageRequest),
			page
		);
	}
}
