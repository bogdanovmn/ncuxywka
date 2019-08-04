package com.github.bogdanovmn.ncuxywka.web.infrastructure.config.mustache;

import com.samskivert.mustache.Mustache;
import com.samskivert.mustache.Template;

import java.io.IOException;
import java.io.Writer;

public class Layout implements Mustache.Lambda {
	private String body;
	private final Mustache.Compiler compiler;
	private final String name;
	private final String contextPath;

	public Layout(Mustache.Compiler compiler, String name, String contextPath) {
		this.compiler = compiler;
		this.name = name;
		this.contextPath = contextPath;
	}

	public Layout(Mustache.Compiler compiler, String contextPath) {
		this.compiler = compiler;
		this.name = "min";
		this.contextPath = contextPath;
	}

	@Override
	public void execute(Template.Fragment frag, Writer out) throws IOException {
		body = frag.execute();
		compiler.compile(
			String.format("{{>layout/%s}}", this.name)
		).execute(frag.context(), out);
	}

	public String getBody() {
		return body;
	}

}