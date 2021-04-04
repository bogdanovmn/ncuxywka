package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import lombok.Builder;
import lombok.Value;

@Value
@Builder
class UserInYearGroup {
	private final int id;
	private final String name;
	private final String date;
	private final boolean sameDate;
	private final boolean muted;
	private final boolean firstInSameDate;
}
