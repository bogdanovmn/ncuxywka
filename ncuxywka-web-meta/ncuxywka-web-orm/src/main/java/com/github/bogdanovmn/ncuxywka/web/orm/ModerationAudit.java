package com.github.bogdanovmn.ncuxywka.web.orm;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class ModerationAudit extends BaseEntity {
	private User moderator;
	private Integer objectId;
	private Date eventDate;
	private ModerationEventType type;

}
