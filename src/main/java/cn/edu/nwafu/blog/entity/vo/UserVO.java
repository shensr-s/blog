package cn.edu.nwafu.blog.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO extends BaseVO {

    private Long id;//id

    private String nickName;//昵称

    private String username;//用户名

    private String password;//密码

    private String email;//邮箱

    private String avatar;//头像

    private Integer type;//用户类型

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private boolean isDeletedFlag;//删除标记
}
