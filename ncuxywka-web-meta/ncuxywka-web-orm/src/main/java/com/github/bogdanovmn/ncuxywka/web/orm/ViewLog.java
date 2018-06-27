package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class ViewLog extends BaseEntity {
	@ManyToOne
	private User user;
	@Enumerated(EnumType.STRING)
	private ViewLogObjectType objectType;
	private Integer objectId;
	private Date viewDate;
	private Integer ip;
	private String userAgent;
}
