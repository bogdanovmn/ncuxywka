package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.ncuxywka.model.common.BaseEntityAuditable;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class Creo extends BaseEntityAuditable {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;

	@Column(nullable = false)
	private String title;

	@Column(nullable = false)
	private LocalDateTime updated;

	@Enumerated(EnumType.ORDINAL)
	@Column(nullable = false)
	private CreoStatus status;

	@OneToOne(fetch = FetchType.LAZY)
	private CommentTopic commentTopic;

}
