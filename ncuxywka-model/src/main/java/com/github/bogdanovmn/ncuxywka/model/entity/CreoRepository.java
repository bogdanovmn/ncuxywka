package com.github.bogdanovmn.ncuxywka.model.entity;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CreoRepository extends JpaRepository<Creo, Integer> {
	@Query(
		"select c as creo, u as user, cs as statistic from Creo c " +
		"join User u on u.id = c.user.id " +
		"join CreoStatistic cs on cs.creo.id = c.id " +
		"where u.muted <> 1 " +
			"and c.status = 0" +
		"order by c.created desc"
	)
	List<CreoMinView> findLast(Pageable pageable);

	interface CreoMinView {
		Creo getCreo();
		User getUser();
		CreoStatistic getStatistic();
	}
}
