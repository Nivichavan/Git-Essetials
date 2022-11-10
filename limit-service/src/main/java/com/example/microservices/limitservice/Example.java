package com.example.microservices.limitservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/*public class LimitServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(LimitServiceApplication.class, args);
	}

}*/



import org.springframework.boot.*;

import org.springframework.boot.autoconfigure.*;

import org.springframework.stereotype.*;

import org.springframework.web.bind.annotation.*;

@SpringBootApplication

@RestController

@EnableAutoConfiguration

public class Example {

@RequestMapping("/")

String home() {

return "Hello World!";

}

public static void main(String[] args) throws Exception {

SpringApplication.run(Example.class, args);

}

}

