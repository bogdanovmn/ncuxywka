package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
public class UserGroup extends BaseEntity {
	@Column(nullable = false)
	private String name;
	private String commentPhrase;
	@Enumerated(EnumType.STRING)
	@Column(nullable = false, length = 20)
	private UserGroupType type;
}
