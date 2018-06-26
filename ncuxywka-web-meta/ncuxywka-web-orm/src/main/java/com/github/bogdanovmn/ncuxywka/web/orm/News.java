package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class News extends BaseEntity {
	private User user;
	private Date postDate;
	private String message;
	private boolean visible = true;
}
