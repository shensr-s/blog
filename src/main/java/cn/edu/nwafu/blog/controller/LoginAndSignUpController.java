package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.entity.vo.UserVO;
import cn.edu.nwafu.blog.service.BlogServiceImpl;
import cn.edu.nwafu.blog.service.UserServiceImpl;
import cn.edu.nwafu.blog.util.MD5Utils;
import cn.edu.nwafu.blog.util.UserSessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.soap.Name;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * @author shensr
 * @Date 2019/9/6
 */
@Controller
public class LoginAndSignUpController {

    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private BlogServiceImpl blogService;

    private Logger logger = LoggerFactory.getLogger(this.getClass());



    @RequestMapping("/")
    public String index(){

        return "home/home";
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
        UserSessionUtils.logOut(request);
        return "/";
    }

    /**
     * 用户注册
     * @param userVO
     * @return
     */
    @RequestMapping("/ajax/signUp")
    @ResponseBody
    public ResultVO signUp(@RequestBody UserVO userVO){
        ResultVO resultVO = new ResultVO(200, "注册成功");

        User checkUser = userService.checkUser(userVO.getUsername());

        if(checkUser!=null){
            //用户存在-->返回
            resultVO.setCode(300);
            resultVO.setMsg("用户名已经存在");
        }else {
            //用户不存在-->注册
            User user = new User();
            user.setUsername(userVO.getUsername());
            user.setPassword(MD5Utils.codeMD5(userVO.getPassword()));
            user.setCreateTime(new Date());
            user.setUpdateTime(new Date());
            user.setIsDeletedFlag(false);
            //默认为普通用户
            user.setRoleId(2L);
            try {
                userService.saveUser(user);
            }catch (Exception e){
                resultVO.setCode(301);
                resultVO.setMsg("用户注册失败");
                logger.error("错误：{} Exception：{}",resultVO.getMsg(),e);
            }
        }

        return resultVO;
    }




}
