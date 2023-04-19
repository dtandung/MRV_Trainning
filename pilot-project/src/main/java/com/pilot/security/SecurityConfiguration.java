//package com.pilot.security;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
//
///**
// * This class is used to configure permission to access web application resources
// * 
// */
//@Configuration
//public class SecurityConfiguration {
//
//  @Bean
//  public WebSecurityCustomizer webSecurityCustomizer() {
//      return (web) -> web
//        .ignoring()
//        .antMatchers("/css/**", "/js/**", "/images/**","/plugins/**", "/*", "/**/*", "/**/**/*");
//  }
////	@Override
////	protected void configure(HttpSecurity http) throws Exception {
////
////		// User Permission 
////		http.authorizeRequests()
////				.antMatchers("/css/**", "/js/**", "/images/**","/plugins/**", "/*", "/**/*", "/**/**/*").permitAll()
////				.and() // Disable CRSF:Cross-Site-Request-Forgery check
////						.csrf().disable();
////	}
//}