package com.example.config;

import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	@Nullable
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	@Nullable
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{AppConfig.class};
	}

	@Override
	@NonNull
	protected String[] getServletMappings() {
		return new String[]{"/"};
	}
}
