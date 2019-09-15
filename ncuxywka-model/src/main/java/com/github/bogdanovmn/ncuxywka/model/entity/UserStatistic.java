package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Getter

@Entity
public class UserStatistic extends BaseEntity {
	private static Map<Integer, String> RANK_OUT_TITLE = new HashMap<Integer, String>() {{
		put(1, "Солидарен с окружающими пациэнтами");
		put(2, "Кругом одни шизики!");
		put(3, "Этим животным только и нужно что спариваться и размножаться!");
		put(4, "Кругом одни параноики...");
		put(5, "Будь моя воля, сделал бы всем лоботомию");
	}};

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

	public String votesOutRankTitle() {
		return RANK_OUT_TITLE.getOrDefault(votesOutRank, "Еще не определился");
	}
}
