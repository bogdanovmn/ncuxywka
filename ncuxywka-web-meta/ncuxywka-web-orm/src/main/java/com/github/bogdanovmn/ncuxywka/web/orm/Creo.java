package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class Creo extends BaseEntity {
	@ManyToOne
	private User user;
	private String title;
	private String body;
	private Date postDate;
	private Date editDate;
	@Enumerated(EnumType.STRING)
	private CreoType type;
	private Integer ip;
}
