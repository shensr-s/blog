package cn.edu.nwafu.blog.entity.vo;

/**
 * @version V1.0
 * @description: 错误码Code 参考org.springframework.http.HttpStatus
 * @author shensr
 * @create 2019/9/5
 */
public enum ResultEnum {
    SUCCESS(200, "成功"),
    //"Internal Server Error"
    ERROR(500, "服务器遇到错误，无法完成请求"),
    //"Bad Request"
    PARAMETER_ERROR(400, "参数错误"),
    //"Unauthorized"
    NEED_AUTH(401, "需要认证"),
    //"Forbidden"
    FORBIDDEN(403, "没有权限"),
    //"Not Found"
    NOT_EXIST(404, "请求不存在"),
    // "Method Not Allowed"
    METHOD_NOT_ALLOWED(405 ,"方法不允许"),
    //"Multiple Choices"
    LOGIN_AGAIN(300, "请重新登录"),
    //其他失败情况
    FAILURE(601,"操作失败"),
    //缓存信息过期
    CACHE_EXPRIE(701,"缓存过期"),
    //未登录
    NOT_LOGIN(301, "未登录"),
    //其它地方登录
    LOGIN_PLAY_OUT(302, "该账号已在其它地方登录，请重新登录!"),

    SESSION_TIME_OUT(303,"登录已失效，请重新登录");



    private Integer code;

    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
