package com.github.bogdanovmn.ncuxywka.web.infrastructure.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;

@ConfigurationProperties(prefix = "skin")
@Data
public class SkinConfiguration {
	private String active;
	private List<Template> templates;

	@Data
	public static class Template {
		private String id;
		private String css;
		private Image img;
		private Button button;
		private String jsInclude;
	}

	@Data
	public static class Image {
		private String main;
		private String logo;
		private String lozung;
		private String room6;
		private String nizm;
		private String mainshit;
		private String proc;
	}

	@Data
	public static class Button {
		private String creoComment;
		private String gbComment;
		private String vote;
		private String creoSelect;
	}

	public Template activeTemplate() {
		return templates.stream().filter(template -> template.getId().equals(active))
			.findFirst().orElseThrow(() ->
				new RuntimeException(
					String.format("Template with name '%s' is not found", active)
				)
			);
	}
}
