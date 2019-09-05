package cn.edu.nwafu.blog.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author shensr
 * @Date 2019/9/5
 */
//拦截所有带有@Controller注解的异常
// @ControllerAdvice的使用参考：https://blog.csdn.net/zxfryp909012366/article/details/82955259
@ControllerAdvice
public class ControllerExceptionHandler {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
//   ControllerExceptionHandler.class和this.getClass()一样

    @ExceptionHandler(Exception.class)
    public ModelAndView exceptionHandler(HttpServletRequest request, Exception e) {

        //1.记录日志信息
        logger.error("Request URL:{},Exception:{}", request.getRequestURL(), e);
        ModelAndView mv = new ModelAndView();
        //2.添加错误信息
        mv.addObject("url", request.getRequestURL());
        mv.addObject("exception", e);
        //3.返回错误页面
        mv.setViewName("error/error");
        return mv;

    }
}
