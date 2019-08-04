package com.github.bogdanovmn.ncuxywka.web;

import com.github.bogdanovmn.common.spring.menu.MenuConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ComponentScan(basePackages = {
	"com.github.bogdanovmn.ncuxywka.model",
	"com.github.bogdanovmn.ncuxywka.web"
})
@EnableJpaRepositories(basePackages = "com.github.bogdanovmn.ncuxywka.model")
@EntityScan(basePackages = "com.github.bogdanovmn.ncuxywka.model")
@EnableTransactionManagement
@EnableConfigurationProperties(MenuConfiguration.class)
public class App {
	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
	}

}

