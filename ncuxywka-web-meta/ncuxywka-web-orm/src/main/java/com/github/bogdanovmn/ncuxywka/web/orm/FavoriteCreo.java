package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class FavoriteCreo extends BaseEntity {
	@ManyToOne
	private User user;
	@ManyToOne
	private Creo creo;
	private Date createDate;
}
