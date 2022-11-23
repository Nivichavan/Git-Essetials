package com.example.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication

@ComponentScan({"com.example"})
@EntityScan("com.example.entity")
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class DemoAppApplication {

	public static void main(String[] args) throws Exception{
		SpringApplication.run(DemoAppApplication.class, args);
		
		System.out.println("Hello");
	}
}