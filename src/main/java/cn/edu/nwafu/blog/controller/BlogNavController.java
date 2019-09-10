package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客导航页跳转
 * @create 2019/9/6
 **/

@Controller
@RequestMapping("/blog")
public class BlogNavController {

    @Autowired
    private TypeServiceImpl typeService;

    //跳转到相应的页面
    //博客管理页面
    @RequestMapping("/manage")
    public String locHome(Model model) {
        List<Type> typeList = typeService.selectTypes();

        model.addAttribute("typeList",typeList);
        return "blogManage/blogManage";
    }

    @RequestMapping("/add")
    public String LocEditBlog(Model model) {
        //查询分类
        List<Type> typeList = typeService.selectTypes();
        model.addAttribute("typeList", typeList);

        //查询标签
        return "blogManage/blogs-input";
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

    @RequestMapping("/index")
    public String locIndex() {
        return "index";
    }






}
