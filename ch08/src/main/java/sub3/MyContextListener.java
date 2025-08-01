package sub3;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class MyContextListener implements ServletContextListener{
	// WAS의 시작과 종료를 감사하는 리스너
	
	public MyContextListener() {
		System.out.println("MyContextListener 생성...");
	}
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("MyContextListener Initialized...");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("MyContextListener Destroyed...");
	}
	
}
