package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class Vote extends BaseEntity {
	private User user;
	private Creo creo;
	private VoteValue value;
	private Integer ip;
	private Date voteDate;
}
