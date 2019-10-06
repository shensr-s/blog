package cn.edu.nwafu.blog.resolver;

import cn.edu.nwafu.blog.entity.Tag;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorViewResolver;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author shensr
 * @version V1.0
 * @description: 自定义错误页面解析
 * @create 2019/10/6
 **/
@ControllerAdvice
public class MyErrorViewResolver implements ErrorViewResolver {
    /**
     * 复杂类型的status ，主要处理404
     * @param request
     * @param status
     * @param model
     * @return
     */
    @Override
    public ModelAndView resolveErrorView(HttpServletRequest request, HttpStatus status, Map<String, Object> model) {
        ModelAndView mv = new ModelAndView();
        if(status==HttpStatus.NOT_FOUND){
            mv.setViewName("error/404");
        }else if(status==HttpStatus.BAD_REQUEST){
            mv.addObject("message","BAD_REQUEST");
            mv.setViewName("error/error");
        }
        return mv;
    }
}
