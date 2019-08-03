package com.github.bogdanovmn.ncuxywka.model.entity;

public enum VoteValue {
	EXCELENT(1, "Брат/Сестра по разуму"),
	GOOD    (2, "Шизофрения"),
	NORMAL  (3, "паФрейду"),
	BAD     (4, "Параноя"),
	LOBOTOMY(5, "Пациэнту требуется лоботомия!");

	private final int value;
	private final String title;

	VoteValue(final int value, final String title) {
		this.value = value;
		this.title = title;
	}
}
