package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class UserLog extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;
	@Enumerated(EnumType.STRING)
	@Column(length = 3, nullable = false)
	private UserLogType type;
	@Column(nullable = false)
	private Date eventDate;
	@Column(length = 15)
	private String ip;
}
