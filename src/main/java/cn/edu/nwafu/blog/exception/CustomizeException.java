package cn.edu.nwafu.blog.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 自定义异常类
 *
 * @author shensr
 * @Date 2019/9/5
 */
//ResponseStatus：指定返回的状态码
@ResponseStatus(HttpStatus.NOT_FOUND)
public class CustomizeException extends RuntimeException {
    //最好继承RuntimeException，而不是Exception

    private String message;

    public CustomizeException(String message) {
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

}
