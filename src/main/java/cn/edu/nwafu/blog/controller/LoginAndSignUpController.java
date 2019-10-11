package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.entity.vo.UserVO;
import cn.edu.nwafu.blog.service.UserServiceImpl;
import cn.edu.nwafu.blog.util.Md5Utils;
import cn.edu.nwafu.blog.util.UserSessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.UUID;

/**
 * @author shensr
 * @Date 2019/9/6
 */
@Controller
public class LoginAndSignUpController {

    @Autowired
    private UserServiceImpl userService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    /**
     * 通过cookie第三方登录
     * @param request
     * @return
     */
    @RequestMapping("/")
    public String index(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if("token".equals(cookie.getName())){
                    String token = cookie.getValue();
                    User user = userService.findUserByToken(token);
                    if (user != null) {
                        request.getSession().setAttribute("user",user);
                    }
                    break;
                }
            }
        }


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


        User user = userService.checkUser(userVO.getEmail());

        ResultVO resultVO = new ResultVO(200, "登陆成功");

        HttpSession session = request.getSession();

        if (user != null) {
            // DM5加密后比较
            if (Md5Utils.codeMD5(userVO.getPassword()).equals(user.getPassword())) {
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
     * 用户注册
     * @param userVO
     * @return
     */
    @RequestMapping("/ajax/signUp")
    @ResponseBody
    public ResultVO signUp(@RequestBody UserVO userVO){
        ResultVO resultVO = new ResultVO(200, "注册成功");

        User checkUser = userService.checkUser(userVO.getEmail());

        if(checkUser!=null){
            // 用户存在-->返回
            resultVO.setCode(300);
            resultVO.setMsg(checkUser.getEmail()+"用户已经存在");
        }else {
            // 用户不存在-->注册
            User user = new User();
            user.setUsername(userVO.getUsername());
            user.setEmail(userVO.getEmail());
            user.setPassword(Md5Utils.codeMD5(userVO.getPassword()));
            user.setCreateTime(new Date());
            user.setUpdateTime(user.getCreateTime());
            user.setIsDeletedFlag(false);
            // 默认为普通用户
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


    /**
     * 注销用户
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logOut(HttpServletRequest request, HttpServletResponse response){
        UserSessionUtils.logOut(request);
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if("token".equals(cookie.getName())){
                // Cookie不能根本意义上删除，设置为0即可
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
        return "redirect:/";
    }

}
