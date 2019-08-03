package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class Vote extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;
	@ManyToOne
	@JoinColumn(nullable = false)
	private Creo creo;
	@Column(nullable = false)
	private Integer value;
	@Column(length = 15)
	private String ip;
	@Column(nullable = false)
	private Date voteDate;
}
