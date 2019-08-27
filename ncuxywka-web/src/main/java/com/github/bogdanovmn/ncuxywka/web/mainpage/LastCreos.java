package com.github.bogdanovmn.ncuxywka.web.mainpage;

import com.github.bogdanovmn.ncuxywka.model.entity.Creo;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoTextRepository;

import java.util.ArrayList;
import java.util.List;

class LastCreos {
	private final List<Creo> creos;
	private final CreoTextRepository creoTextRepository;

	LastCreos(List<Creo> creos, CreoTextRepository creoTextRepository) {
		this.creos = creos;
		this.creoTextRepository = creoTextRepository;
	}

	List<CreoPreview> previews() {
		List<CreoPreview> result = new ArrayList<>();
		int currentUserId = 0;
		CreoPreview currentPreview = null;
		for (Creo creo : creos) {
			if (currentPreview == null || creo.getUser().getId() != currentUserId) {
				currentPreview = new CreoPreview(
					creo,
					creoTextRepository.getOne(creo.getId()).getText()
				);
				result.add(currentPreview);
				currentUserId = creo.getUser().getId();
			}
			else {
				currentPreview.addPreviousCreo(creo);
			}
		}
		return result;
	}
}
