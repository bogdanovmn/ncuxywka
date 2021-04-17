package com.github.bogdanovmn.ncuxywka.web.infrastructure;

import com.github.bogdanovmn.common.spring.menu.MenuItem;

public enum MainMenuItem implements MenuItem {

//	MAIN_ROOMS,

	MAIN,
	FAQ,
	REGISTRATION,
	LOGIN,
	POST_CREO,
	ROOM_6,

// 	FILE_CABINET,

	USERS,
	CREOS_HISTORY,
	QUARANTINE,
	COMMENTS,

//	OTHER_ROOMS,

	WISH_ROOM,
	PETR_ROOM,
	FRENIZM_ROOM,
	MAINSHIT_ROOM,
	PROCEDURE_ROOM,
	NEOFUTURIZM_CREOS,

//	USER,

	SETTINGS,
	PERSONAL_MESSAGES,
	DIAGNOSES_FROM_ME,
	DIAGNOSES_TO_ME,
	LOGOUT,

//	MAINDOCTOR

	RANDOM_CREO,

	NONE;

	@Override
	public String note() {
		return null;
	}
}