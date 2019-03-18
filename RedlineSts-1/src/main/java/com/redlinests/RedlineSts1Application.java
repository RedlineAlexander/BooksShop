package com.redlinests;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.controllers.redlinests, com.redlinests.service"})
public class RedlineSts1Application {

	public static void main(String[] args) {
		SpringApplication.run(RedlineSts1Application.class, args);
	}

}
