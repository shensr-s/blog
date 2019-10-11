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

    /**
     *  id
     */
   
    private Long id;
    /**
     * 昵称
     */
    private String nickName;
    /**
     *用户名
     */
    private String username;
    /**
     *密码
     */
    private String password;
    /**
     *邮箱
     */
    private String email;
    /**
     *头像
     */
    private String avatar;
    /**
     *用户类型
     */
    private Long roleId;
    /**
     *创建时间
     */
    private Date createTime;
    /**
     *更新时间
     */
    private Date updateTime;
    /**
     *删除标记
     */
    private Boolean isDeletedFlag;
}
