package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class PersonalMessage extends BaseEntity {
	@ManyToOne
	private User from;
	@ManyToOne
	private User to;
	private Date postDate;
	private String message;
	private boolean isNew = true;
}
