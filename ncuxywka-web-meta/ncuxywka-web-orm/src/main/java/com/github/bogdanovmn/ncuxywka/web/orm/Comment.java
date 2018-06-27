package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class Comment extends BaseEntity {
	@ManyToOne
	private Creo creo;
	@ManyToOne
	private User user;
	private String alias;
	private Date postDate;
	private Integer ip;
	private String message;
}
