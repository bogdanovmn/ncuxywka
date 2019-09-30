package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntityRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends BaseEntityRepository<Comment> {

	@Query(
		countQuery = "select count(cm) from Creo cr join Comment cm on cm.topic.id = cr.commentTopic.id",
		value =
			"select cr as creo, cm as comment, cru as creoUser, cmu as commentUser " +
			"from Creo cr " +
			"join Comment cm on cm.topic.id = cr.commentTopic.id " +
			"join User cru on cru.id = cr.user.id " +
			"left join User cmu on cmu.id = cm.user.id " +
			"order by cm.id desc"
	)
	Page<CreosComment> getAllCreosComments(Pageable pageable);

	interface CreosComment {
		Creo getCreo();
		Comment getComment();
		User getCreoUser();
		User getCommentUser();
	}
}
