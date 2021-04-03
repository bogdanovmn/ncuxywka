package com.github.bogdanovmn.ncuxywka.model.entity;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Arrays;

@RequiredArgsConstructor
@Getter
public enum RoomType {
	ROOM_6("6", "Кря-кря"),
	FAQ("faq", "Спросить"),
	WISH("wish", "Пожелать"),
	PROCEDURE("proc", "Удариться об стену"),
	PIG_PETR("petr", "Продолжить"),
	FRENIZM("frenizm", "Поумничать"),
	MAINSHIT("mainshit", "Обосраться"),
	NEO_FAQ("neo_faq", "Спросить");

	private final String id;
	private final String postButtonCaption;

	public static RoomType fromId(String roomId) {
		return Arrays.stream(values())
			.filter(x -> x.id.equals(roomId))
			.findFirst()
			.orElseThrow(
				() -> new IllegalArgumentException("Can't find such room: " + roomId)
			);
	}

	@Override
	public String toString() {
		return id;
	}
}
