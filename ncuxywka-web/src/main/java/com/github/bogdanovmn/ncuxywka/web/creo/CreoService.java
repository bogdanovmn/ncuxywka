package com.github.bogdanovmn.ncuxywka.web.creo;

import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CommentView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
class CreoService {
	@Autowired
	private CreoRepository creoRepository;

	CreoView creoView(int creoId) {
		return creoRepository.get(creoId);
	}

	List<CommentView> allComments(Integer creoId) {
		return creoRepository.allComments(creoId);
	}

	List<CreoMinView> list() {
		return creoRepository.findLast(PageRequest.of(0, 100));
	}
}
