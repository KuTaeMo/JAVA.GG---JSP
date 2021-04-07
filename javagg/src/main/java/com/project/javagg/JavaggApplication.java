package com.project.javagg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class JavaggApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaggApplication.class, args);
	}

}
