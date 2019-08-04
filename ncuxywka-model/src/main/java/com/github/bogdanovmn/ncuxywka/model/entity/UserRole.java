package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntityWithUniqueName;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class UserRole extends BaseEntityWithUniqueName {
	@ManyToMany(mappedBy = "roles")
	private Set<User> users;

	public UserRole(String name) {
		super(name);
	}

	public static UserRole guest() {
		return new UserRole(Role.GUEST.name());
	}

	public static enum Role {
		GUEST,
		USER,
		ADMIN,
		PLAGIARISER
	}
}
