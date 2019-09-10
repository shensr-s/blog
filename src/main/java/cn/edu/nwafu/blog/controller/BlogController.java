package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.BlogVO;
import cn.edu.nwafu.blog.service.BlogServiceImpl;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import com.github.pagehelper.PageInfo;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客管理
 * @create 2019/9/8
 **/

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogServiceImpl blogService;

    @Autowired
    private TypeServiceImpl typeService;


    //获取博客列表
    @RequestMapping("/ajax/list")
    public String selectBlogPageList(@RequestBody BlogVO blog, Model model) {

        Blog searchBlog = new Blog();
//        searchBlog.setTitle(blog.getTitle());
//        searchBlog.
        List<Blog> blogList = blogService.selectBlogPageList(blog.getPageNum(), blog.getPageSize(), searchBlog);

        PageInfo pageInfo = new PageInfo(blogList);
        model.addAttribute("blogList", pageInfo.getList());
        model.addAttribute("page", pageInfo);
        return "blogManage/blogList";
    }

    //编辑博客

    @RequestMapping("/edit/{id}")
    public String editBlog(Model model, @PathVariable Long id) {

        //查询分类
        List<Type> typeList = typeService.selectTypes();
        model.addAttribute("typeList", typeList);

        //查询标签

        //TODO

        //查询博客
        Blog blog = blogService.selectBlogById(id);
        model.addAttribute("blog", blog);
        return "blogManage/blogs-input";
    }
}
