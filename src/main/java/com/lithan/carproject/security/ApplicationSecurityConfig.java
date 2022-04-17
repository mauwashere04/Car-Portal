package com.lithan.carproject.security;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter{
	private PasswordEncoder passwordencoder;

	@Autowired
	UserDetailsService userdetail;
	@Autowired
	ApplicationSecurityConfig (PasswordEncoder encoder) {
		this.passwordencoder=encoder;
	}
	
	@Autowired
	RolesHandler roles;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http
		.authorizeRequests()
		.antMatchers("/", "home", "register", "About", "Contact", "/myregister", "/myregistration", "/aboutus", "/contactus").permitAll()
		.anyRequest()
		.authenticated()
		.and()
		.formLogin()
		.successHandler(roles)
		.and()
		.logout()
		.logoutUrl("/logout")
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.clearAuthentication(true)
		.invalidateHttpSession(true);
	}
	
	@Autowired
	AuthenticationProvider authProvider() {
		DaoAuthenticationProvider dao = new DaoAuthenticationProvider();
		dao.setPasswordEncoder(passwordencoder);
		dao.setUserDetailsService(userdetail);
		
		return dao;
	}

//	@Override
//	@Bean protected UserDetailsService userDetailsService() {
//		// TODO Auto-generated method stub
//		UserDetails userone = User.builder().username("mau1").password(passwordencoder.encode("123456")).roles("ADD_STORE").build();
//		UserDetails usertwo = User.builder().username("mau2").password(passwordencoder.encode("123456")).roles("VIEW_STORE").build();
//		return new InMemoryUserDetailsManager(userone, usertwo);
//	}

	
}
