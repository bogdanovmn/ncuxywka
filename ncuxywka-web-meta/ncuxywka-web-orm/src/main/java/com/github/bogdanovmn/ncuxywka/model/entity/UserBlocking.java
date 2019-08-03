package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class UserBlocking extends BaseEntity {
	@ManyToOne
	private User user;
	@Column(length = 15)
	private String ip;
	@Column(nullable = false)
	private Date begin;
	@Column(nullable = false)
	private Date end;
	private String comment;
}
