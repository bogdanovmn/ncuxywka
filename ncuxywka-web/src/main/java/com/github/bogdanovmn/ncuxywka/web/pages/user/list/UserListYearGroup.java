package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserWithStatistic;
import com.github.bogdanovmn.ncuxywka.web.pages.user.list.UserInYearGroup.UserInYearGroupBuilder;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

class UserListYearGroup extends UserListGroup {

	UserListYearGroup(String year, List<UserWithStatistic> users) {
		super(
			year,
			users.stream()
				.sorted(
					Comparator.comparing(x -> x.getInfo().getCreated())
				).collect(Collectors.toList())
		);
	}

	public List<UserInYearGroup> getUsers() {
		List<UserInYearGroupBuilder> result = new ArrayList<>(users.size());
		LocalDate prevDate = null;

		for (UserWithStatistic user : users) {
			LocalDate date = user.getInfo().getCreated().toLocalDate();
			boolean isSameDate = date.equals(prevDate);
			result.add(
				UserInYearGroup.builder()
					.id(user.getInfo().getId())
					.name(user.getInfo().userName())
					.muted(user.getInfo().isMuted())
					.date(date.toString())
					.firstInSameDate(!isSameDate)
					.sameDate(isSameDate)
			);
			if (isSameDate) {
				result.get(result.size() - 2).sameDate(true);
			}
			prevDate = date;
		}
		return result.stream()
			.map(UserInYearGroupBuilder::build)
			.collect(Collectors.toList());
	}

}
