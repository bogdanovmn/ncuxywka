package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class IpAddress extends BaseEntity {
	@Column(length = 15, nullable = false, unique = true)
	private String ipv4;
	@Column(nullable = false)
	private LocalDateTime created;
}
