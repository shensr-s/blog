package cn.edu.nwafu.blog.config;

import cn.edu.nwafu.blog.interceptor.LoginInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/6
 **/

public class WebConfig implements WebMvcConfigurer{

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/admin/**")
                .excludePathPatterns("/admin/")
                .excludePathPatterns("/admin/login");


    }
}
