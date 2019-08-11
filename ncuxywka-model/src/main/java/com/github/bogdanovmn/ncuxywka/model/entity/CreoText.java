package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor

@Entity
public class CreoText extends BaseEntity {
	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@MapsId
	private Creo creo;

	@Column(columnDefinition = "TEXT", nullable = false)
	private String text;
}
