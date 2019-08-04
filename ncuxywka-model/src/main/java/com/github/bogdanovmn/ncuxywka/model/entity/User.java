package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntityWithUniqueName;
import com.github.bogdanovmn.common.spring.menu.UserAuthorization;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class User extends BaseEntityWithUniqueName implements UserAuthorization {
	@Column(unique = true, nullable = false)
	private String email;

	@Column(nullable = false, length = 32)
	private String passwordHash;

	@Column(nullable = false)
	private Date registerDate;

	@Column(nullable = false)
	private Date editDate;

	@Column(columnDefinition = "TEXT")
	private String about;
	@Column(columnDefinition = "TEXT")
	private String loves;
	@Column(columnDefinition = "TEXT")
	private String hates;
	@Column(columnDefinition = "TEXT")
	private String illness;
	private String city;
	@Column(length = 15)
	private String ip;

	@ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
	@JoinTable(
		name = "role2user",
		joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
		inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id")
	)
	private Set<UserRole> roles;

	public User(String name) {
		super(name);
	}

	public User setRole(UserRole.Role role) {
		roles = new HashSet<>(Collections.singleton(new UserRole(role.name())));
		return this;
	}

	public static User guest() {
		return new User("Случайный посетитель").setRoles(Collections.singleton(UserRole.guest()));
	}

	@Override
	public String userName() {
		return getName();
	}

	@Override
	public boolean withRole(String role) {
		return roles.contains(new UserRole(role));
	}
}
