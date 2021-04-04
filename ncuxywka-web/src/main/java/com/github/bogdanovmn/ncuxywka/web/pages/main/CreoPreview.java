package com.github.bogdanovmn.ncuxywka.web.pages.main;

import com.github.bogdanovmn.common.text.TruncatedText;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;

import java.util.ArrayList;
import java.util.List;

class CreoPreview {
	private static final int MAX_CHARS = 512;
	private static final int MAX_LINES = 8;

	private final CreoMinView creoView;
	private final TruncatedText text;
	private final List<CreoMinView> previousCreos = new ArrayList<>();

	CreoPreview(CreoMinView creoView, String text) {
		this.creoView = creoView;
		this.text = new TruncatedText(text, MAX_LINES, MAX_CHARS);
	}

	void addPreviousCreo(CreoMinView creoView) {
		previousCreos.add(creoView);
	}

	int id() {
		return creoView.getCreo().getId();
	}

	String text() {
		return text.value();
	}

	boolean truncated() {
		return text.truncated();
	}


	String title() {
		return creoView.getCreo().getTitle();
	}

	String author() {
		return creoView.getCreo().getUser().getName();
	}

	List<CreoMinView> previousCreos() {
		return previousCreos;
	}
}
