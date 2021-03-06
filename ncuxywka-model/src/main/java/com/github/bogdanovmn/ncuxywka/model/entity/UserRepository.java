package com.github.bogdanovmn.ncuxywka.model.entity;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {
	@EntityGraph(attributePaths = {"roles"})
	User findFirstByName(String name);

	User findFirstByEmail(String email);

	@Query(
		"select u as info, us as statistic " +
		"from UserStatistic us " +
		"join User u on u.id = us.user.id " +
		"where us.commentsOut > 0 " +
			"or us.roomComments > 0 " +
			"or us.guestBookComments > 0 " +
			"or us.creoPosts > 0 " +
		"order by u.id desc"
	)
	List<UserWithStatistic> findActive(Pageable page);

	interface UserWithStatistic {
		User getInfo();
		UserStatistic getStatistic();
	}

	@Query(
		"select u as info, ud as details, us as statistic " +
		"from User u " +
		"join UserDetails ud on u.id = ud.user.id " +
		"join UserStatistic us on u.id = us.user.id " +
		"where u.id = :userId"
	)
	UserFullView userFullView(@Param("userId") Integer userId);

	interface UserFullView {
		User getInfo();
		UserDetails getDetails();
		UserStatistic getStatistic();
	}
}
