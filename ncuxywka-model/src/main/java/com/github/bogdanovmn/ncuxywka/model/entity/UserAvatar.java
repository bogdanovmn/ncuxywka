package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class UserAvatar extends BaseEntity {
	@OneToOne(fetch = FetchType.LAZY, optional = false)
	private User user;

	@Column(nullable = false)
	private byte[] original;

	@Column(nullable = false)
	private byte[] thumbnail;

	@Column(nullable = false)
	private LocalDateTime created;

	@Column(nullable = false)
	private LocalDateTime updated;
}
