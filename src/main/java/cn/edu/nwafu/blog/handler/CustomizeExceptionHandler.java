package cn.edu.nwafu.blog.handler;

import cn.edu.nwafu.blog.exception.CustomizeException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义异常处理类
 *
 * @author shensr
 * @Date 2019/9/5
 */
//拦截所有带有@Controller注解的异常
// @ControllerAdvice的使用参考：https://blog.csdn.net/zxfryp909012366/article/details/82955259
//    官网：https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-developing-web-applications.html#boot-features-error-handling
@ControllerAdvice
public class CustomizeExceptionHandler extends ResponseEntityExceptionHandler {

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    @ExceptionHandler(value = Exception.class)
    public ModelAndView exceptionHandler(HttpServletRequest request, Throwable e) throws Throwable {

        //1.记录日志信息
        logger.error("Request URL:{},Exception:{}", request.getRequestURL(), e);

        ModelAndView mv = new ModelAndView();

        if (e instanceof CustomizeException) {
            //500
            mv.addObject("message", e.getMessage());
            //3.返回错误页面
            mv.setViewName("error/error");
        } else {
            //服务器内部错误
            mv.setViewName("error/500");
        }

        return mv;

    }


    private HttpStatus getStatus(HttpServletRequest request) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        if (statusCode == null) {
            return HttpStatus.INTERNAL_SERVER_ERROR;
        }
        return HttpStatus.valueOf(statusCode);
    }
}
