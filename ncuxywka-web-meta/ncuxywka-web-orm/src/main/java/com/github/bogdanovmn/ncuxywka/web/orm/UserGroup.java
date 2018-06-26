package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;

@Entity
public class UserGroup extends BaseEntity {
	private String name;
	private String commentPhrase;
	private UserGroupType type;
}
