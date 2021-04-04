package com.github.bogdanovmn.ncuxywka.web.pages.main;

import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoTextRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.User;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserWithStatistic;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
class MainPageService {
	private final CreoRepository creoRepository;
	private final UserRepository userRepository;
	private final CreoTextRepository creoTextRepository;


	LastCreos lastCreos(int lastCreoAuthorsCount) {
		int currentPage = 0;
		List<CreoMinView> creos = new ArrayList<>();

		while (!isEnoughAuthors(creos, lastCreoAuthorsCount)) {
			List<CreoMinView> lastCreosPage = creoRepository.findLast(
				PageRequest.of(currentPage++, lastCreoAuthorsCount * 2)
			);
			if (lastCreosPage.isEmpty()) {
				break;
			}
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
