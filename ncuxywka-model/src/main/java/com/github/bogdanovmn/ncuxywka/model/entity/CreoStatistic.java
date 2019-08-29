package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class CreoStatistic extends BaseEntity {
	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@MapsId
	private Creo creo;

	private Integer votesRank;
	private int comments;
	private int votes;
	private int views;

	@Column(nullable = false)
	private LocalDateTime updated;
}
