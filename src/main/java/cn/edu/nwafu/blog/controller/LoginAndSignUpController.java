package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.entity.vo.UserVO;
import cn.edu.nwafu.blog.service.UserServiceImpl;
import cn.edu.nwafu.blog.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.soap.Name;
import java.util.Collections;

/**
 * @author shensr
 * @Date 2019/9/6
 */
@Controller
public class LoginAndSignUpController {

    @Autowired
    private UserServiceImpl userService;



    @RequestMapping("/")
    public String index(){
        return "home";
    }
    /**
     * 跳转到登录页面
     *
     * @return
     */
    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }


    /**
     * 跳转到注册界面
     *
     * @return
     */
    @RequestMapping("/signup")
    public String signUp() {
        return "signUp";
    }

    /**
     * 异步登陆
     *
     * @param userVO
     * @return
     */
    @RequestMapping("/ajax/login")
    @ResponseBody
    public ResultVO login(@RequestBody UserVO userVO,
                          HttpServletRequest request) {


        User user = userService.checkUser(userVO.getUsername());

        ResultVO resultVO = new ResultVO(200, "登陆成功");

        HttpSession session = request.getSession();

        if (user != null) {
            //DM5加密后比较
            if (MD5Utils.codeMD5(userVO.getPassword()).equals(user.getPassword())) {
                session.setAttribute("user", user);
                resultVO.setData(user);
            } else {
                resultVO.setCode(300);
                resultVO.setMsg("密码错误");
            }
        } else {
            resultVO.setCode(301);
            resultVO.setMsg("用户不存在");

        }
        return resultVO;
    }

    /**
     * 注销用户
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logOut(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "/";
    }




}
