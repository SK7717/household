package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class Filter implements javax.servlet.Filter {
	
public Filter() {
	// TODO Auto-generated method stub
}

public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException {
	request.setCharacterEncodint("UTF-8");
	chain.doFilter(request, response);
}

public void init(FilterConfig fConfig) throws ServletException {
	// TODO Auto-generated method stub
	}
}