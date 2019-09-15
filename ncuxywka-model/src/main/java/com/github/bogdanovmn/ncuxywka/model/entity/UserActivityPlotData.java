package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor

@Entity
@Table(
	uniqueConstraints = {
		@UniqueConstraint(
			columnNames = {"user_id", "day"}
		)
	}
)
public class UserActivityPlotData extends BaseEntity {
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	private User user;

	private int value;

	@Column(nullable = false)
	private LocalDate day;
}
