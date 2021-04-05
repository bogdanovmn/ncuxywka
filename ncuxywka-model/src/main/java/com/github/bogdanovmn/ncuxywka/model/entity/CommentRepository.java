package com.github.bogdanovmn.ncuxywka.model.entity;

import com.github.bogdanovmn.common.spring.jpa.BaseEntityRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

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
	Page<CreoComment> creoComments(Pageable pageable);

	interface CreoComment {
		Creo getCreo();
		Comment getComment();
	}

	@Query(
		nativeQuery = true,
		countQuery = "select count(*) from room r join comment cm on cm.topic_id = r.comment_topic_id where r.id = :room",
		value =
			"select cm.* " +
				"from room r " +
				"join comment cm on cm.topic_id = r.comment_topic_id " +
				"where r.id = :room " +
				"order by cm.id desc"
	)
	Page<Comment> roomComments(@Param("room") String room, Pageable pageable);

	@Query(
		countQuery = "select count(cm) from Creo cr join Comment cm on cm.topic.id = cr.commentTopic.id where cm.user.id = :fromUserId",
		value =
			"select cr as creo, cm as comment, cm.user, cr.user " +
				"from Creo cr " +
				"join Comment cm on cm.topic.id = cr.commentTopic.id " +
				"where cm.user.id = :fromUserId " +
				"order by cm.id desc"
	)
	Page<CreoComment> creoCommentsFrom(@Param("fromUserId") Integer fromUserId, Pageable pageable);

	@Query(
		countQuery = "select count(cm) from Creo cr join Comment cm on cm.topic.id = cr.commentTopic.id where cr.user.id = :toUserId",
		value =
			"select cr as creo, cm as comment, cmu, cr.user " +
				"from Creo cr " +
				"join Comment cm on cm.topic.id = cr.commentTopic.id " +
				"left join fetch User cmu on cm.user.id = cmu.id " +
				"where cr.user.id = :toUserId " +
				"order by cm.id desc"
	)
	Page<CreoComment> creoCommentsTo(@Param("toUserId") Integer toUserId, Pageable pageable);

	@Query(
		countQuery = "select count(cm) from Creo cr join Comment cm on cm.topic.id = cr.commentTopic.id " +
			"where cr.user.id = :toUserId and cm.user.id = :fromUserId",
		value =
			"select cr as creo, cm as comment, cm.user, cr.user " +
				"from Creo cr " +
				"join Comment cm on cm.topic.id = cr.commentTopic.id " +
				"where cr.user.id = :toUserId " +
				"and cm.user.id = :fromUserId " +
				"order by cm.id desc"
	)
	Page<CreoComment> creoCommentsFromTo(@Param("fromUserId") Integer fromUserId,
										 @Param("toUserId") Integer toUserId,
										 Pageable pageable);
}
