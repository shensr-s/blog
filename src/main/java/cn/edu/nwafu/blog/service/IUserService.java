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
    User checkUser(String username);

    int saveUser(User user);
}
