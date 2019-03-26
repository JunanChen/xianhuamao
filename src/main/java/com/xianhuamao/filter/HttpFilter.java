package com.xianhuamao.filter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author janhs
 * @date 19-3-15 下午12:13
 */
@Component
@WebFilter(filterName = "HttpFilter",urlPatterns = {"/*"})
public class HttpFilter implements Filter {

    @Value("${http.port}")
    private Integer httpPort = 80;

    @Value("${server.port}")
    private Integer httpsPort = 443;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        if(request.getServerPort() == httpPort) {

            String requestURI = request.getRequestURI();
            response.sendRedirect("https://localhost:"+ httpsPort + requestURI);
        }else
            chain.doFilter(request,response);

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
