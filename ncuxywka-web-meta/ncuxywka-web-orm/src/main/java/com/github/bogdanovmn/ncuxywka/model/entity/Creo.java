package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Creo extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;
	@Column(nullable = false)
	private String title;
	@Column(columnDefinition = "TEXT", nullable = false)
	private String body;
	@Column(nullable = false)
	private Date postDate;
	@Column(nullable = false)
	private Date editDate;
	@Enumerated(EnumType.STRING)
	@Column(length = 12, nullable = false)
	private CreoType type;
	@Column(length = 15)
	private String ip;
}
