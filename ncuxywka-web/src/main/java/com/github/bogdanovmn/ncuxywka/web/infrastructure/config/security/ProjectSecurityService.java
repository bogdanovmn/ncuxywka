package com.github.bogdanovmn.ncuxywka.web.infrastructure.config.security;


import com.github.bogdanovmn.ncuxywka.model.entity.User;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRole;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProjectSecurityService {
	private final AuthenticationManager authenticationManager;
	private final UserDetailsService userDetailsService;

	public boolean isLogged() {
		User currentUser = getCurrentUser();
		return currentUser != null && !currentUser.withRole(UserRole.Role.GUEST.name());
	}

	public User getCurrentUser() {
		Object userDetails = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (userDetails instanceof ProjectUserDetails) {
			return ((ProjectUserDetails)userDetails).getUser();
		}
		if (userDetails instanceof User) {
			return (User) userDetails;
		}
		return null;
	}

	public void login(String username, String password) {
		UserDetails userDetails = userDetailsService.loadUserByUsername(username);
		UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken
			= new UsernamePasswordAuthenticationToken(
				userDetails,
				password,
				userDetails.getAuthorities()
		);

		this.authenticationManager.authenticate(usernamePasswordAuthenticationToken);

		if (usernamePasswordAuthenticationToken.isAuthenticated()) {
			SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
			LOG.info(String.format("Auto login %s successfully!", username));
		}
	}
}