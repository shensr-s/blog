package cn.edu.nwafu.blog.controller;


import cn.edu.nwafu.blog.dto.AccessTokenDTO;
import cn.edu.nwafu.blog.dto.GitHubUser;
import cn.edu.nwafu.blog.entity.User;
import cn.edu.nwafu.blog.provider.GitHubProvider;
import cn.edu.nwafu.blog.service.UserServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.UUID;

/**
 * @author shensr
 * @version V1.0
 * @description: OAuth App GitHub授权登录
 * @create 2019/10/4
 **/

@Controller
public class AuthorizeController {


    @Autowired
    private GitHubProvider gitHubProvider;

    @Autowired
    private UserServiceImpl userService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Value("${github.client.id}")
    private String client_id;

    @Value("${github.client.secret}")
    private String client_secret;

    @Value("${github.redirect.uri}")
    private String redirect_uri;

    @RequestMapping("/callback")
    public String callback(@RequestParam(name = "code") String code,
                           @RequestParam(name = "state") String state,
                           HttpServletRequest request,
                           HttpServletResponse response) {

        AccessTokenDTO accessTokenDTO = new AccessTokenDTO();
        accessTokenDTO.setClientId(client_id);
        accessTokenDTO.setClientSecret(client_secret);
        accessTokenDTO.setCode(code);
        accessTokenDTO.setRedirectUri(redirect_uri);
        accessTokenDTO.setState(state);


        String accessToken = gitHubProvider.getAccessToken(accessTokenDTO);
        GitHubUser gitHubUser = gitHubProvider.getUser(accessToken);
        if (gitHubUser != null && gitHubUser.getId() != null) {
            // 登录成功，
            logger.info("------{}登陆成功----", gitHubUser.getName());

            User user = new User();
            String token = UUID.randomUUID().toString();
            user.setToken(token);
            user.setUsername(gitHubUser.getName());
            user.setAccountId(gitHubUser.getId());
            user.setCreateTime(new Date());
            user.setUpdateTime(user.getCreateTime());
            user.setRoleId(2L);
            user.setAvatar(gitHubUser.getAvatarUrl());

            userService.saveOrUpdateUser(user);

            response.addCookie(new Cookie("token", token));
            request.getSession().setAttribute("user", user);
            // 重定向到主页面，地址栏的地址会改变，不影响用户体验
            return "redirect:/";


        } else {
            // 登录失败，重新登录
            return "redirect:/";
        }

    }
}