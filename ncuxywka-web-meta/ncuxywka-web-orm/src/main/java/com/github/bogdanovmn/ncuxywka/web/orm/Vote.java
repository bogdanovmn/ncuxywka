package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class Vote extends BaseEntity {
	@ManyToOne
	private User user;
	@ManyToOne
	private Creo creo;
	@Enumerated(EnumType.ORDINAL)
	private VoteValue value;
	private Integer ip;
	private Date voteDate;
}
