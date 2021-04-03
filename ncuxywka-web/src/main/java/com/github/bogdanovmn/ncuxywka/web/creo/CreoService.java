package com.github.bogdanovmn.ncuxywka.web.creo;

import com.github.bogdanovmn.ncuxywka.model.entity.Comment;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoView;
import com.github.bogdanovmn.ncuxywka.web.comment.CommentView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
class CreoService {
	@Autowired
	private CreoRepository creoRepository;

	CreoView creoView(int creoId) {
		return creoRepository.get(creoId);
	}

	List<CommentView> allComments(Integer creoId) {
		List<Comment> comments = creoRepository.allComments(creoId);
		int[] i = {0};
		return comments.stream()
			.map(comment -> new CommentView(comment, (long) (comments.size() - i[0]++)))
			.collect(Collectors.toList());
	}

	List<CreoMinView> list() {
		return creoRepository.findLast(PageRequest.of(0, 100));
	}
}
