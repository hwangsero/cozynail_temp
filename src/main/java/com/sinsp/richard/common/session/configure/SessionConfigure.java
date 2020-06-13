package com.sinsp.richard.common.session.configure;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sinsp.richard.web.comm.service.impl.CommServiceImpl;

@Configuration
public class SessionConfigure {

	@Bean
	public CommServiceImpl beanCommService() {
		return new CommServiceImpl();
	}
}