package com.github.bogdanovmn.ncuxywka.model.entity;

import javax.persistence.*;

@Entity
public class Room {
	@Id
	@Enumerated(EnumType.STRING)
	@Column(length = 10)
	private RoomType id;

	@OneToOne(fetch = FetchType.LAZY)
	private CommentTopic commentTopic;
}
