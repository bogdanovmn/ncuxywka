package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserWithStatistic;
import lombok.Getter;

import java.util.List;

class UserListGroup {
	@Getter
	private final String groupName;
	protected final List<UserWithStatistic> users;

	UserListGroup(String groupName, List<UserWithStatistic> users) {
		this.groupName = groupName;
		this.users = users;
	}


}
