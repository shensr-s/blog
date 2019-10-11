package cn.edu.nwafu.blog.entity.vo;


import lombok.ToString;

/**
 * @author shensr
 * @version V1.0
 * @description: 后台返回前端的数据
 * @create 2019/9/5
 */
@ToString
public class ResultVO extends BaseVO {

    /**
     * 编码200为成功，其余为失败,编码取自：ResultEnum
     */
    private Integer code;

    /**
     * 提示信息
     */
    private String msg;

    /**
     * 业务数据
     */
    private Object data;

    public ResultVO(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public ResultVO(Integer code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public ResultVO(ResultEnum resultEnum, Object data) {
        this.code = resultEnum.getCode();
        this.msg = resultEnum.getMsg();
        this.data = data;
    }

    public ResultVO(ResultEnum resultEnum) {
        this.code = resultEnum.getCode();
        this.msg = resultEnum.getMsg();
    }

    public void setCodeAndMsgByResultEnum(ResultEnum resultEnum) {
        this.code = resultEnum.getCode();
        this.msg = resultEnum.getMsg();
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public static ResultVO success(Object data) {
        return new ResultVO(ResultEnum.SUCCESS.getCode(), ResultEnum.SUCCESS.getMsg(), data);
    }

    public static ResultVO success() {
        return new ResultVO(ResultEnum.SUCCESS.getCode(), ResultEnum.SUCCESS.getMsg());
    }

    public static ResultVO error(int code, String msg) {
        return new ResultVO(code, msg);
    }

    public static ResultVO error(String msg) {
        return new ResultVO(ResultEnum.ERROR.getCode(), msg);
    }

    public static ResultVO error() {
        return new ResultVO(ResultEnum.ERROR.getCode(), ResultEnum.ERROR.getMsg());
    }
}
