package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.NotFoundPageException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Controller
@RequestMapping("/test")
public class IndexController {

//    Logger logger = LoggerFactory.getLogger(this.getClass());
//    @GetMapping("/")
//    public String index(){
////        String blog=null;
////        if (blog==null){
////            throw  new NotFoundPageException("博客不存在");
////        }
//        return "home";
//    }

//    @GetMapping("/login")
//    public String login(){
////        String blog=null;
////        if (blog==null){
////            throw  new NotFoundPageException("博客不存在");
////        }
//        return "admin/login";
//    }

    @RequestMapping("/blog")
    public String locBlog(){
        return "blog";
    }
}
