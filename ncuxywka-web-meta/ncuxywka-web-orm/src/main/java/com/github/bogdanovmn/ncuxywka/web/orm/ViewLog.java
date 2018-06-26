package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class ViewLog extends BaseEntity {
	private User user;
	private ViewLogObjectType objectType;
	private Integer objectId;
	private Date viewDate;
	private Integer ip;
	private String userAgent;
}
