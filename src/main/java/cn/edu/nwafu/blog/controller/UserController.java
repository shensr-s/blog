package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.service.UserServiceImpl;
import cn.edu.nwafu.blog.util.UserSessionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.awt.event.MouseListener;

/**
 * @author shensr
 * @version V1.0
 * @description: 用户
 * @create 2019/10/4
 **/

@RequestMapping("/blog/user")
@Controller
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/center")
    public String locIndex(HttpServletRequest request, Model model) {
        User  user= UserSessionUtils.getUser(request);
        if(user!=null){
            model.addAttribute("userInfo",user);
        }

        return "center";
    }
}
