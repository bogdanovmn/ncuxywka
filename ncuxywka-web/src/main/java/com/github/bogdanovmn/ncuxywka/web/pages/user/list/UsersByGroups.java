package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserWithStatistic;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class UsersByGroups {
	private final List<UserWithStatistic> users;

	UsersByGroups(List<UserWithStatistic> users) {
		this.users = users;
	}

	List<UserListGroup> byCreationDate() {
		return users.stream()
			.collect(
				Collectors.groupingBy(
					u -> String.valueOf(
						u.getInfo().getCreated().getYear()
					)
				)
			)
			.entrySet().stream()
			.map(x -> new UserListYearGroup(x.getKey(), x.getValue()))
			.sorted(
				Comparator.comparing(
					UserListGroup::getGroupName
				).reversed()
			)
		.collect(Collectors.toList());
	}

	List<UserListGroup> byAlphabet() {
		return users.stream()
			.collect(
				Collectors.groupingBy(
					u -> String.valueOf(u.getInfo().getName().charAt(0)).toUpperCase()
				)
			)
			.entrySet().stream()
			.map(x -> new UserListGroup(x.getKey(), x.getValue()))
			.sorted(
				Comparator.comparing(
					UserListGroup::getGroupName
				)
			)
			.collect(Collectors.toList());
	}

	List<UserListGroup> byRank() {
		return users.stream()
			.filter(u -> !u.getInfo().isMainDoctor())
			.collect(
				Collectors.groupingBy(
					u -> {
						UserListDiagnosis group = UserListDiagnosis.fromRank(
							u.getStatistic().getVotesInRank()
						);
						if (u.getInfo().isMuted()) {
							group = UserListDiagnosis.LOBOTO;
						}
						else if (u.getStatistic().getCreoPosts() == 0) {
							group = UserListDiagnosis.AWAITING;
						}
						else if (u.getStatistic().getCreoPosts() < 3 || u.getStatistic().getVotesIn() < 15) {
							group = UserListDiagnosis.UNKNOWN;
						}
						return group;
					}
				)
			)
			.entrySet().stream()
			.sorted(
				Comparator.comparing(
					Map.Entry::getKey
				)
			)
			.map(x -> new UserListGroup(x.getKey().getTitle(), x.getValue()))
			.collect(Collectors.toList());
	}
}
