package cn.edu.nwafu.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客导航页跳转
 * @create 2019/9/6
 **/

@Controller
@RequestMapping("/blog")
public class BlogController {


    //跳转到相应的页面
    @RequestMapping("/home")
    public String locHome() {
        return "blogs";
    }

    @RequestMapping("/edit")
    public String LocEditBlog() {
        return "blogs-input";
    }

    @RequestMapping("/type")
    public String locTypes() {
        return "type/types";
    }

    @RequestMapping("/tag")
    public String locTags() {
        return "tags";
    }

    @RequestMapping("/about")
    public String locAbout() {
        return "about";
    }

    @RequestMapping("/archives")
    public String locArchives() {
        return "archives";
    }

    @RequestMapping("/blog")
    public String locBlog() {
        return "blog";
    }






}
