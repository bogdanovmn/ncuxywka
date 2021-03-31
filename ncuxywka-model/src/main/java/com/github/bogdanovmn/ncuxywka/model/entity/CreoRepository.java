package com.github.bogdanovmn.ncuxywka.model.entity;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

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
	@Query(
		"select c as info, u as user, cs as statistic, ct.text as text " +
			"from Creo c " +
			"join CreoText ct on ct.creo.id = c.id " +
			"join User u on u.id = c.user.id " +
			"join CreoStatistic cs on cs.creo.id = c.id " +
			"where c.id = :creoId"
	)
	CreoView get(@Param("creoId") Integer creoId);

	interface CreoView {

		Creo getInfo();
		User getUser();
		CreoStatistic getStatistic();
		String getText();
	}

	@Query(
		"select cm as comment, u as commentAuthor " +
		"from Comment cm " +
		"join CommentTopic ct on ct.id = cm.topic.id " +
		"join Creo cr on cr.commentTopic.id = ct.id " +
		"left join User u on u.id = cm.user.id " +
		"where cr.id = :creoId " +
		"order by cm.id"
	)
	List<Comment> allComments(@Param("creoId") Integer creoId);

	@Query(
		"select c as creo, u as user, cs as statistic " +
		"from Creo c " +
		"join User u on u.id = c.user.id " +
		"join CreoStatistic cs on cs.creo.id = c.id " +
		"where c.status = 0 " +
		"and u.id = :userId " +
		"order by c.id desc"
	)
	List<CreoMinView> allByUser(@Param("userId") Integer userId);

	@Query(
		"select c as creo, u as user, cs as statistic " +
		"from Creo c " +
		"join User u on u.id = c.user.id " +
		"join CreoStatistic cs on cs.creo.id = c.id " +
		"join FavoriteCreo fc on fc.creo.id = c.id " +
		"where fc.user.id = :userId " +
		"order by fc.id desc"
	)
	List<CreoMinView> allFavoriteByUser(@Param("userId") Integer userId);
}
