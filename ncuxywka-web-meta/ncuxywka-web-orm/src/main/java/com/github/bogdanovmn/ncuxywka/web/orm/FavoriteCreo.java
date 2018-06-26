package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class FavoriteCreo extends BaseEntity {
	private User user;
	private Creo creo;
	private Date createDate;
}
