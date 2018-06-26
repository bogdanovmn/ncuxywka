package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class UserBlocking extends BaseEntity {
	private User user;
	private Integer ip;
	private Date begin;
	private Date end;
	private String comment;
}
