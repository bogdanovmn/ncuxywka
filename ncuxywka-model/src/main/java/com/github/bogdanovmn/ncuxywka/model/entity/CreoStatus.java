package com.github.bogdanovmn.ncuxywka.model.entity;

public enum CreoStatus {
	CREO(0),
	QUARANTINE(1),
	DELETE(2),
	ALEX_JILE(3),
	BLACK_COPY(4),
	PLAGIARISM(5);

	private final int id;

	CreoStatus(int id) {
		this.id = id;
	}
}
