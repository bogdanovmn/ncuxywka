package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class UserDetails extends BaseEntity {
	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@MapsId
	private User user;

	@Column(columnDefinition = "TEXT")
	private String about;
	@Column(columnDefinition = "TEXT")
	private String loves;
	@Column(columnDefinition = "TEXT")
	private String hates;
	@Column(columnDefinition = "TEXT")
	private String illness;
	private String city;

	@Column(nullable = false)
	private LocalDateTime updated;
}
