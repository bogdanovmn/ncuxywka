package com.github.bogdanovmn.ncuxywka.web.creo;

import com.github.bogdanovmn.common.spring.menu.MenuItem;
import com.github.bogdanovmn.common.spring.mvc.ViewTemplate;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoView;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.MainMenuItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/creos")
class CreoController extends AbstractVisualController {
	@Autowired
	private CreoService creoService;

	@GetMapping("{creoId}")
	ModelAndView creo(@PathVariable Integer creoId) {
		CreoView creoView = creoService.creoView(creoId);
		return new ViewTemplate("creo_view")
			.with("creo", creoView)
			.with("comments", creoService.allComments(creoView.getCreo().getId()))
			.with("postButtonCaption", "Поставить диагноз")
			.modelAndView();
	}

	@Override
	protected MenuItem currentMenuItem() {
		return MainMenuItem.NONE;
	}
}
