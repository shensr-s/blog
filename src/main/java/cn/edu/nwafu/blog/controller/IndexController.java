package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.NotFoundPageException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Controller
public class IndexController {
    @GetMapping("/")
    public String index(){
        String blog=null;
        if (blog==null){
            throw  new NotFoundPageException("博客不存在");
        }
        return "index";
    }
}
