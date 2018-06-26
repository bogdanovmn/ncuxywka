package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class PersonalMessage extends BaseEntity {
	private User from;
	private User to;
	private Date postDate;
	private String message;
	private boolean isNew = true;
}
