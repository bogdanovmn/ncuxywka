package com.github.bogdanovmn.ncuxywka.web.mainpage;

import com.github.bogdanovmn.ncuxywka.model.entity.Creo;

import java.util.ArrayList;
import java.util.List;

class CreoPreview {
	private final Creo creo;
	private final String text;
	private final List<Creo> previousCreos = new ArrayList<>();

	CreoPreview(Creo creo, String text) {
		this.creo = creo;
		this.text = text;
	}

	void addPreviousCreo(Creo creo) {
		previousCreos.add(creo);
	}

	int id() {
		return creo.getId();
	}

	String text() {
		return text;
	}

	String title() {
		return creo.getTitle();
	}

	String author() {
		return creo.getUser().getName();
	}

	List<Creo> previousCreos() {
		return previousCreos;
	}
}
