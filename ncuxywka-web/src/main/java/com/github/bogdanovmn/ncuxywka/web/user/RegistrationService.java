package com.github.bogdanovmn.ncuxywka.web.user;

import com.github.bogdanovmn.ncuxywka.model.entity.User;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;

@Service
class RegistrationService {
	private final UserRepository userRepository;

	@Autowired
	public RegistrationService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	User addUser(UserRegistrationForm userForm) {
		return userRepository.save(
			new User(userForm.getName())
				.setEmail(
					userForm.getEmail()
				)
				.setPasswordHash(
					DigestUtils.md5DigestAsHex(
						userForm.getPassword().getBytes()
					)
				)
				.setRegisterDate(new Date())
				.setRole(UserRole.Role.USER)
		);
	}

	boolean isUserExists(String email) {
		return userRepository.findFirstByEmail(email) != null;
	}

	boolean isUserNameExists(String name) {
		return userRepository.findFirstByName(name) != null;
	}
}
