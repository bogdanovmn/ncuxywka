package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class PersonalMessage extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User from;
	@ManyToOne
	@JoinColumn(nullable = false)
	private User to;
	@Column(nullable = false)
	private Date postDate;
	@Column(columnDefinition = "TEXT", nullable = false)
	private String message;
	private boolean isNew = true;
}
