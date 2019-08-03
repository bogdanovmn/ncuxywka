package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class UserStatistic extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;
	private int votesIn;
	private int votesOut;
	private int votesInRank;
	private int votesOutRank;
	private int commentsIn;
	private int commentsOut;
	private int commentsInBySelf;
	private int roomComments;
	private int creoPosts;
}
