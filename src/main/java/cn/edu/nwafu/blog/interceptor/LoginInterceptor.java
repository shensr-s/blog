package cn.edu.nwafu.blog.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/6
 **/

public class LoginInterceptor extends HandlerInterceptorAdapter {
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        if(request.getSession().getAttribute("user")==null){
//            response.sendRedirect("/");
//            return false;
//        }
//        return true;
//    }
}
