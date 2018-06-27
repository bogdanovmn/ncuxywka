package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class News extends BaseEntity {
	@ManyToOne
	private User user;
	private Date postDate;
	private String message;
	private boolean visible = true;
}
