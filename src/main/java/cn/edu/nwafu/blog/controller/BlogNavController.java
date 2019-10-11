package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.service.BlogServiceImpl;
import cn.edu.nwafu.blog.service.TagServiceImpl;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

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

    @Autowired
    private TagServiceImpl tagService;

    @Autowired
    private BlogServiceImpl blogService;


    /**
     * 跳转到相应的页面
     * 博客管理页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/manage")
    public String locHome(Model model) {
        List<Type> typeList = typeService.selectTypes();

        model.addAttribute("typeList", typeList);
        return "blogManage/blogManage";
    }

    @RequestMapping("/add")
    public String locEditBlog(Model model) {
        // 查询分类
        List<Type> typeList = typeService.selectTypes();
        model.addAttribute("typeList", typeList);

        // 查询标签
        List<Tag> tagList = tagService.selectTags();
        model.addAttribute("tagList", tagList);
        return "blogManage/blogs-input";
    }

    /**
     * 博客类型页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/type")
    public String locTypes(Model model) {

        // flag为空 查询全部
        List<Type> typeList = typeService.selectTypesAndCount(0);
        model.addAttribute("typeList", typeList);
        model.addAttribute("total", typeList.size());
        return "type/types";
    }

    /**
     * 博客标签页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/tag")
    public String locTags(Model model) {

        // flag为0 查询所有标签
        List<Tag> tagList = tagService.selectTagsAndCount(0);
        model.addAttribute("tagList", tagList);
        model.addAttribute("total", tagList.size());
        return "tag/tags";
    }

    @RequestMapping("/about")
    public String locAbout() {
        return "about";
    }

    /**
     * 定位定归档页面，并完成相应数据查询
     *
     * @param model
     * @return
     */
    @RequestMapping("/archives")
    public String locArchives(Model model) {

        Map<String, List<Blog>> archiveBlog = blogService.archiveBlog();

        //TODO 计算博客总数 待优化
        AtomicInteger count = new AtomicInteger();
        archiveBlog.forEach((key, value) -> {
            value.forEach(item -> {
                if (item != null) {
                    count.getAndIncrement();
                }
            });
        });
        model.addAttribute("archiveBlog", archiveBlog);

        model.addAttribute("count", count.toString());
        return "archives/archives";
    }


}
