package sub2;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

@WebFilter(urlPatterns = {"/welcome.do", "/greeting.do"})
public class FilterC implements Filter{
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		System.out.println("FilterC doFilter...");
		
		//다음 필터(최종 필터는 서블릿)
		chain.doFilter(req, resp);
		
		
		
	}

}
