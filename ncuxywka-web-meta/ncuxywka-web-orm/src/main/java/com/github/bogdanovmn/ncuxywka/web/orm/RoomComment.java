package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class RoomComment extends BaseEntity {
	private User user;
	private String alias;
	private Date postDate;
	private Integer ip;
	private String message;
	private RoomType type;
}
