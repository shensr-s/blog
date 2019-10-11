package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.entity.vo.UserVO;

/**
 * @author shensr
 * @Date 2019/9/5
 */
public interface IUserService {

    /***
     * 登录检验用户
     * @param username
     * @return
     */
    User checkUser(String email);

    int saveUser(User user);

    /**
     * 第三方用户注册 登录校验
     * @param accountId
     * @return
     */
    User checkUserByAccountId(Long accountId);

    /**
     * 通过cookie第三方登录
     * @param token
     * @return
     */
    User findUserByToken(String token);

    /**
     * 用户不存在插入用户信息，用户存在就更新用户token
     * @param user
     */
    public void saveOrUpdateUser(User user);
}
