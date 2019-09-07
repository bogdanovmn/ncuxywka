package com.github.bogdanovmn.ncuxywka.web.mainpage;

import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoTextRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.User;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserWithStatistic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
class MainPageService {
	@Autowired
	private CreoRepository creoRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private CreoTextRepository creoTextRepository;


	LastCreos lastCreos(int lastCreoAuthorsCount) {
		int currentPage = 0;
		Set<Integer> authors = new HashSet<>();
		List<CreoMinView> creos = new ArrayList<>();

		while (!isEnoughAuthors(creos, lastCreoAuthorsCount)) {
			List<CreoMinView> lastCreosPage = creoRepository.findLast(
				PageRequest.of(currentPage++, lastCreoAuthorsCount)
			);
			if (lastCreosPage == null) {
				break;
			}
			authors.addAll(
				lastCreosPage.stream().map(creo -> creo.getUser().getId()).collect(Collectors.toSet())
			);
			creos.addAll(lastCreosPage);
		}

		return new LastCreos(creos, creoTextRepository);
	}

	private boolean isEnoughAuthors(List<CreoMinView> creos, int lastCreoAuthorsCount) {
		int authorsSequence = 0;
		int prevAuthor = 0;
		for (CreoMinView creo : creos) {
			if (prevAuthor != creo.getUser().getId()) {
				authorsSequence++;
			}
			prevAuthor = creo.getUser().getId();
		}
		return authorsSequence >= lastCreoAuthorsCount;
	}

	List<User> newActiveUsers(int newUsersCount) {
		return userRepository.findActive(PageRequest.of(0, newUsersCount))
			.stream()
			.map(UserWithStatistic::getInfo)
			.collect(Collectors.toList());
	}
}
