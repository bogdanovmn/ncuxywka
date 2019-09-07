package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter

@Entity
public class UserStatistic extends BaseEntity {
	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@MapsId
	private User user;

	private int votesIn;
	private int votesOut;
	private Integer votesInRank;
	private Integer votesOutRank;
	private int commentsIn;
	private int commentsOut;
	private int commentsInBySelf;
	private int roomComments;
	private int guestBookComments;
	private int creoPosts;

	@Column(nullable = false)
	private LocalDateTime updated;
}
