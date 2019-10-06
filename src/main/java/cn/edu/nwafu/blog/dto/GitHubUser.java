package cn.edu.nwafu.blog.dto;

import lombok.Data;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/10/4
 **/
@Data
public class GitHubUser {
    private String name;//用户名

    private Long id;//唯一id

    private String bio;//描述
}
