package com.github.bogdanovmn.ncuxywka.web.mainpage;

import com.github.bogdanovmn.ncuxywka.model.entity.*;
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
		List<Creo> creos = new ArrayList<>();

		while (!isEnoughAuthors(creos, lastCreoAuthorsCount)) {
			List<Creo> lastCreosPage = creoRepository.findLast(
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

	private boolean isEnoughAuthors(List<Creo> creos, int lastCreoAuthorsCount) {
		int authorsSequence = 0;
		int prevAuthor = 0;
		for (Creo creo : creos) {
			if (prevAuthor != creo.getUser().getId()) {
				authorsSequence++;
			}
			prevAuthor = creo.getUser().getId();
		}
		return authorsSequence >= lastCreoAuthorsCount;
	}

	List<User> newActiveUsers(int newUsersCount) {
		return userRepository.findNewActive(PageRequest.of(0, newUsersCount));
	}
}
