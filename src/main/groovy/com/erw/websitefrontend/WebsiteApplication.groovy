package com.erw.blogwebsite

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.cloud.netflix.zuul.EnableZuulProxy

@EnableZuulProxy
@SpringBootApplication
class WebsiteApplication {

	static void main(String[] args) {
		SpringApplication.run(WebsiteApplication, args)
	}

}
