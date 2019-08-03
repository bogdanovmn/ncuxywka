package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class Comment extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private Creo creo;
	@ManyToOne
	private User user;
	private String alias;
	@Column(nullable = false)
	private Date postDate;
	@Column(length = 15)
	private String ip;
	@Column(columnDefinition = "TEXT")
	private String message;
}
