package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class RoomComment extends BaseEntity {
	@ManyToOne
	private User user;
	private String alias;
	@Column(nullable = false)
	private Date postDate;
	@Column(length = 15)
	private String ip;
	@Column(columnDefinition = "TEXT", nullable = false)
	private String message;
	@Enumerated(EnumType.STRING)
	@Column(length = 12, nullable = false)
	private RoomType type;
}
