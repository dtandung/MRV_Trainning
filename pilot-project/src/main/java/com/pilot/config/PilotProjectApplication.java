package com.pilot.config;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@PropertySource({"classpath:config/datasource.properties"})
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "com.pilot")
@ComponentScan(basePackages = "com.pilot")
@EntityScan("com.pilot")
public class PilotProjectApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(PilotProjectApplication.class, args);
	}

}
