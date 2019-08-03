package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class ViewLog extends BaseEntity {
	@ManyToOne
	private User user;
	@Enumerated(EnumType.STRING)
	@Column(length = 4, nullable = false)
	private ViewLogObjectType objectType;
	@Column(nullable = false)
	private Integer objectId;
	@Column(nullable = false)
	private Date viewDate;
	@Column(length = 15)
	private String ip;
	private String userAgent;
}
