package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.UserMapper;
import cn.edu.nwafu.blog.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Service
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 校验用户（登录和注册）
     *
     * @param email 邮箱
     * @return
     */
    @Override
    public User checkUser(String email) {

        User user = userMapper.selectUserByUserFlags(email);
        return user;
    }

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @Override
    public int saveUser(User user) {
        return userMapper.saveUser(user);
    }


    /**
     * 第三方用户注册 登录校验
     *
     * @param accountId
     * @return
     */
    @Override
    public User checkUserByAccountId(Long accountId) {
        return userMapper.checkUserByAccountId(accountId);
    }

    /**
     * 通过cookie第三方登录
     *
     * @param token
     * @return
     */
    @Override
    public User findUserByToken(String token) {
        return userMapper.findUserByToken(token);
    }

    @Override
    public void saveOrUpdateUser(User user) {
        Long accountId = user.getAccountId();
        User user1 = userMapper.checkUserByAccountId(accountId);
        if (user1 == null) {
            // 用户不存在
            userMapper.saveUser(user);
        } else {
            // 用户存在
            userMapper.updateUser(user);
        }
    }
}
