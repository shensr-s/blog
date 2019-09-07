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
     * 校验用户登录
     * @param username
     * @return
     */
    @Override
    public User checkUser(String username) {
        String email=username;
        User user = userMapper.selectUserByUserFlags(username, email);
        return user;
    }
}
