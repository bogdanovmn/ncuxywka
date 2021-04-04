package com.github.bogdanovmn.ncuxywka.web.pages.main;

import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoTextRepository;

import java.util.ArrayList;
import java.util.List;

class LastCreos {
	private final List<CreoMinView> creos;
	private final CreoTextRepository creoTextRepository;

	LastCreos(List<CreoMinView> creos, CreoTextRepository creoTextRepository) {
		this.creos = creos;
		this.creoTextRepository = creoTextRepository;
	}

	List<CreoPreview> previews() {
		List<CreoPreview> result = new ArrayList<>();
		int currentUserId = 0;
		CreoPreview currentPreview = null;
		for (CreoMinView creoView : creos) {
			if (currentPreview == null || creoView.getUser().getId() != currentUserId) {
				currentPreview = new CreoPreview(
					creoView,
					creoTextRepository.getOne(
						creoView.getCreo().getId()
					).getText()
				);
				result.add(currentPreview);
				currentUserId = creoView.getUser().getId();
			}
			else {
				currentPreview.addPreviousCreo(creoView);
			}
		}
		return result;
	}
}
