package com.github.bogdanovmn.ncuxywka.web.comment;

import org.springframework.data.domain.Page;

import java.util.List;

class ContentPage<ContentType> {
	private final Page<ContentType> currentPage;
	private final String url;

	ContentPage(Page<ContentType> currentPage, String url) {
		this.currentPage = currentPage;
		this.url = url;
	}

	List<ContentType> content() {
		return currentPage.getContent();
	}

	PaginationBar paginationBar() {
		return PaginationBar.builder()
			.currentPage(currentPage.getNumber())
			.totalPages(currentPage.getTotalPages())
			.url(url)
		.build();
	}
}
