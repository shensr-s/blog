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
     * @return
     */
    User selectUserByUserFlags(@Param("username") String username,@Param("email") String email);
}
