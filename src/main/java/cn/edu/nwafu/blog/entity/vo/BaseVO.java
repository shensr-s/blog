package cn.edu.nwafu.blog.entity.vo;

import com.alibaba.fastjson.JSON;

import java.io.Serializable;

/**
 * @version V1.0
 * @description: 序列化基础类
 * @author shensr
 * @create 2019/9/5
 */
public class BaseVO implements Serializable {

    private static final long serialVersionUID = 1L;

    public String toJson() {
        return JSON.toJSONString(this);
    }

    @Override
    public String toString() {
        return "BaseVO{}";
    }
}
