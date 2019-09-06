package cn.edu.nwafu.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author shensr
 * @Date 2019/9/5
 * 博客评论
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    private Long id;//id

    private String nickName;//昵称

    private String email;//邮箱

    private String comment;//评论内容

    private String avatar;//圆形头像

    private Date createTime;//创建时间

}
