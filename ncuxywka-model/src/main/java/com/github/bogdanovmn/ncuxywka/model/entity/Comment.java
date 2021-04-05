package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.ncuxywka.model.common.BaseEntityAuditable;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class Comment extends BaseEntityAuditable {
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(nullable = false)
	private CommentTopic topic;

	@ManyToOne
	private User user;

	private String alias;

	@Column(columnDefinition = "TEXT")
	private String message;
}
