package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class ModerationAudit extends BaseEntity {
	@ManyToOne
	private User moderator;
	private Integer objectId;
	private Date eventDate;
	private ModerationEventType type;

}
