package cn.edu.nwafu.blog.dto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * @author shensr
 * @version V1.0
 * @description: https://api.github.com/user?access_token= {tokens} 可以获取github返回用户信息
 * @create 2019/10/4
 **/
@Data
public class GitHubUser {
    /**
     * 用户名
     */
    private String name;
    /**
     * id
     */
    private Long id;
    /**
     * 描述
     */
    private String bio;

    /**
     * 头像地址,添加注解@JSONField实现下划线和驼峰互转
     */
    @JSONField(name = "avatar_url")
    private String avatarUrl;
}
