package cn.edu.nwafu.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
////            throw  new CustomizeException("博客不存在");
////        }
//        return "home";
//    }

//    @GetMapping("/login")
//    public String login(){
////        String blog=null;
////        if (blog==null){
////            throw  new CustomizeException("博客不存在");
////        }
//        return "admin/login";
//    }

    @RequestMapping("/blog")
    public String locBlog(){
        return "blog";
    }
}
