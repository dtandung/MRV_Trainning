package com.pilot.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


/**
 * This class is used to configure permission to access web application resources
 * 
 */
@Configuration
@EnableWebSecurity
@Order(value = 101)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private CustomAuthenticationProvider authProvider;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authProvider);
	}

	@Bean("authenticationManager")
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
			.authorizeRequests()
					.antMatchers("/","/css/**", "/js/**", "/images/**","/plugins/**","/login").permitAll()// Cho phép tất cả mọi người truy cập vào những địa chỉ này
					.antMatchers("/brand","/product").access("hasRole('ROLE_ADMIN')")// Cho phép truy cập vào 2 địa chỉ này nếu là ADMIN
					.anyRequest().authenticated()// Tất cả các request khác đều cần phải xác thực mới được truy cập
			.and().formLogin().loginPage("/login")// Cho phép người dùng xác thực bằng form login(tự custom)
					.loginProcessingUrl("/loginAction")
					.defaultSuccessUrl("/product")
					.usernameParameter("username")
					.passwordParameter("password")
					.failureUrl("/login?error")
			.and().logout().logoutSuccessUrl("/login")// Cho phép logout
			.and().exceptionHandling().accessDeniedPage("/login");
	}
}