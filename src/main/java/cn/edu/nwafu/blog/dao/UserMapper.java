package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Repository
public interface UserMapper {

    /**
     * 根据用户名或者邮箱查询用户
     * @param email
     * @return
     */
    User selectUserByUserFlags(String email);

    /**
     * 保存用户信息
     * @param user
     * @return
     */
    int saveUser(User user);


    /**
     *     第三方用户注册 登录校验 根据accountID查看用户是否已经注册，注册就直接登录
     * @param accountId
     * @return
     */
    User checkUserByAccountId(Long accountId);

    User findUserByToken(String token);


    void updateUser(User user);
}
