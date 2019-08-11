package com.github.bogdanovmn.ncuxywka.model.common;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import com.github.bogdanovmn.ncuxywka.model.entity.IpAddress;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor

@MappedSuperclass
public class BaseEntityAuditable extends BaseEntity {

	@Column(nullable = false)
	private LocalDateTime created;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private IpAddress ip;
}
