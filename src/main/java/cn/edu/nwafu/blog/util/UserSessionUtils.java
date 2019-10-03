package cn.edu.nwafu.blog.util;


import cn.edu.nwafu.blog.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.http.HttpServletRequest;

/**
 * @author shensr
 * @version V1.0
 * @description: 用户状态
 * @create 2019/10/2
 **/
public class UserSessionUtils {


    static Logger log = LoggerFactory.getLogger(UserSessionUtils.class);

    /**
     * 判断用户是否存在
     * @param request
     * @return
     */
    public static Long isExist(HttpServletRequest request){
        Long userId=null;

        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            //用户存在
            userId=user.getId();
        }
        return userId;
    }

    /**
     * 用户注销
     * @param request
     */
    public static void logOut(HttpServletRequest request){
        request.getSession().removeAttribute("user");
    }




}
