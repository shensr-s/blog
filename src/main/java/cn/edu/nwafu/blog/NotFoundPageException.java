package cn.edu.nwafu.blog;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundPageException extends RuntimeException {
    //最好继承RuntimeException，而不是Exception
    public NotFoundPageException() {
    }

    public NotFoundPageException(String message) {
        super(message);
    }

    public NotFoundPageException(String message, Throwable cause) {
        super(message, cause);
    }
}
