package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class UserLog extends BaseEntity {
	@ManyToOne
	private User user;
	@Enumerated(EnumType.STRING)
	private UserLogType type;
	private Date eventDate;
	private Integer ip;
}
