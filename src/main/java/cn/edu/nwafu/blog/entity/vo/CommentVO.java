package cn.edu.nwafu.blog.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/14
 **/

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentVO extends BaseVO{
    private Long id;//id

    private String nickName;//昵称

    private String email;//邮箱

    private String comment;//评论内容

    private String avatar;//圆形头像

    private Date createTime;//创建时间

    private Long blogId;//博客Id

    private Long parentCommentId;//父级评论id
}
