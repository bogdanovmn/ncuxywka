package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;

@Entity
public class News extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;

	@Column(nullable = false)
	private LocalDateTime created;

	@Column(columnDefinition = "TEXT", nullable = false)
	private String text;

	private boolean visible = true;
}
