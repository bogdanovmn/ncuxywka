package com.github.bogdanovmn.ncuxywka.web.user.list;

import lombok.Getter;

@Getter
enum UserListDiagnosis {

	LEGEND  (1, "Легенды Психуюшки"),
	SCHIZO  (2, "Шизофреники"),
	FREID   (3, "Пациэнты Фрейда"),
	PARANOID(4, "Параноики"),
	LOBOTO  (5, "Тяжелый случай (нуждаются в срочной лоботомии)"),
	UNKNOWN (99, "Диагноз пока не ясен"),
	AWAITING(100, "Сидят в очереди на сдачу анализов");

	private final int id;
	private final String title;

	UserListDiagnosis(int id, String title) {
		this.id = id;
		this.title = title;
	}

	public static UserListDiagnosis fromRank(Integer rank) {
		if (rank == null) {
			return UNKNOWN;
		}
		if (rank < 1 || rank > 5) {
			throw new IllegalStateException(
				String.format(
					"A rank must be between 1 and 5: %s", rank
				)
			);
		}
		for (UserListDiagnosis uld : UserListDiagnosis.values()) {
			if (uld.id == rank) {
				return uld;
			}
		}
		throw new IllegalStateException("Unknown rank: " + rank);
	}
}
