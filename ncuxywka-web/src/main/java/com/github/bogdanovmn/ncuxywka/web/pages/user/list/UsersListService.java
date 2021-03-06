package com.github.bogdanovmn.ncuxywka.web.pages.user.list;

import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
class UsersListService {
	@Autowired
	private UserRepository userRepository;

	UsersByGroups allUsersByGroups() {
		return new UsersByGroups(
			userRepository.findActive(PageRequest.of(0, 1000))
		);
	}
}
