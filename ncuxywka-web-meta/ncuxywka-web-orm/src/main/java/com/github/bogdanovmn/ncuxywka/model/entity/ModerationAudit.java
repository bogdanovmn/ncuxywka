package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class ModerationAudit extends BaseEntity {
	@ManyToOne
	@JoinColumn(nullable = false)
	private User moderator;
	@Column(nullable = false)
	private Integer objectId;
	@Column(nullable = false)
	private Date eventDate;
	@Enumerated(EnumType.STRING)
	@Column(length = 20, nullable = false)
	private ModerationEventType type;

}
