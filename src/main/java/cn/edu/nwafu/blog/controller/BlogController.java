package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.*;
import cn.edu.nwafu.blog.entity.vo.BlogVO;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.service.BlogServiceImpl;
import cn.edu.nwafu.blog.service.TagServiceImpl;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
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
    private TagServiceImpl tagService;

    @Autowired
    private TypeServiceImpl typeService;

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    /**
     * 获取博客列表
     *
     * @param blog
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/ajax/list")
    public String selectBlogPageList(@RequestBody BlogVO blog, Model model, HttpServletRequest request) {

        User user = (User) request.getSession().getAttribute("user");
        Long userId = null;
        if (user != null) {
            userId = user.getId();
        }
        Blog searchBlog = new Blog();
        searchBlog.setTitle(blog.getTitle());
        searchBlog.setRecommend(blog.getRecommend());
        searchBlog.setTypeId(blog.getTypeId());
        List<Blog> blogList = null;
        if (userId == null) {

            blogList = blogService.selectBlogPageList(blog.getPageNum(), blog.getPageSize(), searchBlog);
        } else {
            searchBlog.setUserId(userId);
            blogList = blogService.selectBlogPageList(blog.getPageNum(), blog.getPageSize(), searchBlog);
        }

        // 查询结果不为空
        if (blogList.size() != 0) {
            PageInfo pageInfo = new PageInfo(blogList);
            model.addAttribute("blogList", pageInfo.getList());
            model.addAttribute("page", pageInfo);
        }

        return "blogManage/blogList";
    }

    /**
     * 跳转到编辑博客页面
     *
     * @param model
     * @param id
     * @return
     */

    @RequestMapping("/edit/{id}")
    public String editBlog(Model model, @PathVariable Long id) {

        //查询分类
        List<Type> typeList = typeService.selectTypes();
        model.addAttribute("typeList", typeList);

        //查询标签
        List<Tag> tagList = tagService.selectTags();
        model.addAttribute("tagList", tagList);
        //TODO

        //查询博客
        Blog blog = blogService.selectBlogById(id);
        List<BlogTag> blogTags = tagService.selectTagByBlogId(id);
        StringBuffer tagStr = new StringBuffer();
        blogTags.forEach(item -> tagStr.append(item.getTagId() + ","));
        String blogTag = tagStr.toString();
        //博客标签
        blogTag = blogTag.substring(0, blogTag.length() - 1);
        model.addAttribute("blog", blog);
        model.addAttribute("blogTag", blogTag);
        return "blogManage/blogs-input";
    }


    /**
     * 保存博客 新增
     *
     * @param blog
     * @param session
     * @return
     */
    @RequestMapping("/ajax/save")
    @ResponseBody
    public ResultVO saveOrPublishBlog(@RequestBody BlogVO blog, HttpSession session) {
        ResultVO resultVO = new ResultVO(200, "");
        User user = (User) session.getAttribute("user");
        if (user == null) {
            resultVO.setMsg("您还未登录，请登录后在进行操作。");
            resultVO.setCode(301);
        } else {
            blog.setUserId(user.getId());

            blog.setUpdateTime(new Date());
            // 未删除
            blog.setIsDeletedFlag(false);

            // 推荐 转载 赞赏 评论
            if (blog.getRecommend() == null) {
                blog.setRecommend(false);
            }
            if (blog.getShareStatement() == null) {
                blog.setShareStatement(false);
            }
            if (blog.getAppreciation() == null) {
                blog.setAppreciation(false);
            }
            if (blog.getCommentAbled() == null) {
                blog.setCommentAbled(false);
            }

            if (blog.getId() == null) {
                //新增
                blog.setCreateTime(new Date());
                //设置浏览次数
                blog.setViews(0);
                try {
                    //保存
                    Long blogId = blogService.saveBlog(blog);
                    resultVO.setMsg("保存成功");
                    resultVO.setData(blogId);
                } catch (Exception e) {
                    resultVO.setMsg("保存失败");
                    resultVO.setCode(601);
                    logger.error("错误：{}；Exception：{}", resultVO.getMsg(), e);
                }
            } else {
                //更新
                try {
                    blogService.updateBlogById(blog);

                    //保存成功
                    resultVO.setMsg("保存成功");
                    resultVO.setData(blog.getId());

                } catch (Exception e) {
                    if (blog.getPublished() == false) {
                        //保存失败
                        resultVO.setMsg("保存失败");
                        resultVO.setCode(601);
                    } else if (blog.getPublished() == true) {
                        //发布失败
                        resultVO.setMsg("发布失败");
                        resultVO.setCode(601);
                    }
                    logger.error("错误：{}；Exception：{}", resultVO.getMsg(), e);
                }
            }


        }


        return resultVO;

    }

    /**
     * 查询博客列表
     *
     * @param pageNum
     * @param pageSize
     * @param model
     * @return
     */
    @RequestMapping("/ajax/home/list")
    public String selectBlogPageHome(Integer pageNum, Integer pageSize, Model model) {
        //查询博客
        List<Blog> blogList = blogService.selectBlogHomeList(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(blogList);
        model.addAttribute("blogList", pageInfo.getList());
        model.addAttribute("total", pageInfo.getTotal());
        model.addAttribute("page", pageInfo);

        return "home/blogHomeList";
    }

    /**
     * 首页查询博客标签
     *
     * @param model
     * @return
     */
    @RequestMapping("/ajax/home/tag")
    public String selectTags(Model model) {
        //参数为1 只查询前六条
        List<Tag> tagList = tagService.selectTagsAndCount(1);
        model.addAttribute("tagList", tagList);
        return "home/tagHomeList";
    }

    /**
     * 首页查询博客类型
     *
     * @param model
     * @return
     */

    @RequestMapping("/ajax/home/type")
    public String selectType(Model model) {

        //参数为1 只查询前六条
        List<Type> typeList = typeService.selectTypesAndCount(1);
        model.addAttribute("typeList", typeList);
        return "home/typeHomeList";
    }

    /**
     * 首页获取最新博客推荐
     *
     * @param model
     * @return
     */

    @RequestMapping("/ajax/home/newBlog")
    public String selectNewBlog(Model model) {
        List<Blog> blogList = blogService.selectBlogHomeList(1, 6);
        model.addAttribute("blogList", blogList);
        return "home/newHomeList";
    }

    /**
     * 跳转博客界面
     *
     * @param id
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/blog/{id}")
    public String locBlogById(@PathVariable Long id, HttpServletRequest request, Model model) {


        Blog blog = blogService.getAndConvert(id);

        User user = (User) request.getSession().getAttribute("user");
        //浏览器访问当前页面时，浏览量加一（非当前用户操作）
        if (user == null || !blog.getUserId().equals(user.getId())) {
            blogService.updateBlogViews(id);
        }

        model.addAttribute("blog", blog);
        return "blog";
    }

}
