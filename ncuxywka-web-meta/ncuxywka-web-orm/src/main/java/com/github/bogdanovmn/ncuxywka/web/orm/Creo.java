package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class Creo extends BaseEntity {
	private User user;
	private String title;
	private String body;
	private Date postDate;
	private Date editDate;
	private CreoType type;
	private Integer ip;
}
