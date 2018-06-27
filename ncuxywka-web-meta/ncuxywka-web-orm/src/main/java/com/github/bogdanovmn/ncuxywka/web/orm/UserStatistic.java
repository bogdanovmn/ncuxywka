package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class UserStatistic extends BaseEntity {
	@ManyToOne
	private User user;
	private Integer votesIn;
	private Integer votesOut;
	private Integer votesInRank;
	private Integer votesOutRank;
	private Integer commentsIn;
	private Integer commentsOut;
	private Integer commentsInBySelf;
	private Integer roomComments;
	private Integer creoPosts;
}
