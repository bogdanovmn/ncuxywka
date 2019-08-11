package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.ncuxywka.model.common.BaseEntityAuditable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Vote extends BaseEntityAuditable {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;

	@ManyToOne
	@JoinColumn(nullable = false)
	private Creo creo;

	@Column(nullable = false)
	private Integer value;
}
