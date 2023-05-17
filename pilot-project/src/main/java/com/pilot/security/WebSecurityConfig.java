package com.pilot.security;



import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;



/**
 * This class is used to configure permission to access web application resources
 * 
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig {
	
	@Bean
    protected  SecurityFilterChain filterChain(HttpSecurity http) throws Exception  {
        http.csrf().disable()
            .authorizeRequests()
                    .antMatchers("/","/home/**","/product-detail/**","/product-brand/**","/css/**", "/js/**","/styles/**","/scripts/**", "/images/**","/plugins/**","/login").permitAll()
                    .antMatchers("/brand","/product").access("hasRole('ROLE_ADMIN')")
                    .anyRequest().authenticated()
            .and().formLogin().loginPage("/login")
                    .loginProcessingUrl("/loginAction")
                    .defaultSuccessUrl("/product")
                    .usernameParameter("username")
                    .passwordParameter("password")
                    .failureUrl("/login?error")
            .and().logout().logoutSuccessUrl("/login")
            .and().exceptionHandling().accessDeniedPage("/login");
        
         return http.build();
    }

}