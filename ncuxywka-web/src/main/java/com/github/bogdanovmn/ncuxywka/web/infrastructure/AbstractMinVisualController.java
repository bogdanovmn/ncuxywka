package com.github.bogdanovmn.ncuxywka.web.infrastructure;

import com.github.bogdanovmn.ncuxywka.web.infrastructure.config.SkinConfiguration;
import com.github.bogdanovmn.ncuxywka.web.infrastructure.config.mustache.Layout;
import com.samskivert.mustache.Mustache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.Map;

public abstract class AbstractMinVisualController extends AbstractController {
	@Autowired
	private Mustache.Compiler compiler;
	@Autowired
	private SkinConfiguration skinConfiguration;

	@Value("${server.servlet.context-path:}")
	private String contextPath;

	@ModelAttribute("layout")
	public Mustache.Lambda layout(Map<String, Object> model) {
		return new Layout(compiler, "min", contextPath);
	}

	@ModelAttribute
	public void addCommonAttributes(Model model) {
		model.addAttribute("skin", skinConfiguration.activeTemplate());
		model.addAttribute("userName", getUser().getName());
	}
}
