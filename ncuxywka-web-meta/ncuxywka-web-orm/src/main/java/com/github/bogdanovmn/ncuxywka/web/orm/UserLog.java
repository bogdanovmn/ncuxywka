package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class UserLog extends BaseEntity {
	private User user;
	private UserLogType type;
	private Date eventDate;
	private Integer ip;
}
