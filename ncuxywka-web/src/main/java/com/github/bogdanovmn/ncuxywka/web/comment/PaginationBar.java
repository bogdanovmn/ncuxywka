package com.github.bogdanovmn.ncuxywka.web.comment;

import lombok.Builder;
import lombok.Value;

@Value
@Builder
class PaginationBar {
	private final int currentPage;
	private final int totalPages;
	private final String url;

	boolean isMoreThanOnePage() {
		return totalPages > 1;
	}

	boolean hasPreviousPage() {
		return currentPage > 1;
	}

	int previousPage() {
		return currentPage - 1;
	}

	boolean hasNextPage() {
		return currentPage < totalPages;
	}

	int nextPage() {
		return currentPage + 1;
	}

	boolean isFirstPageLinkVisible() {
		return currentPage > 2;
	}

	boolean isLastPageLinkVisible() {
		return (totalPages - currentPage) > 2;
	}
}
