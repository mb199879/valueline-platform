package com.valueline.module.server.util;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTestHelper {

	protected ApplicationContext appContext = null;
	private static SpringTestHelper instance = new SpringTestHelper();

	private SpringTestHelper() {
		initContext();
	}
  
	public static SpringTestHelper get() {
		return instance;
	}
 
	protected void initContext() {
		try {
			appContext = new ClassPathXmlApplicationContext(
					new String[]{
							"classpath:com/valueline/module/data/META-INF/spring.xml",
							"classpath:com/valueline/module/server/META-INF/spring.xml"
							});
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} 
	}

	@SuppressWarnings("unchecked")
	public <T> T getBean(Class<T> clazz){
		if(appContext != null){
			String className = clazz.getSimpleName();
			String startName = className.substring(0,1);
			String otherName = className.substring(1);
			
			String beanName =StringUtils.lowerCase(startName) + otherName;
			return (T) appContext.getBean(beanName);
		}
		return null;
	}
	
	public Object getBean(String beanName){
		return appContext.getBean(beanName);
	}
}
