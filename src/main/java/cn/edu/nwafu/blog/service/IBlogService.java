package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.Blog;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客管理Service
 * @create 2019/9/7
 **/

public interface IBlogService {

    Blog selectBlogById(Long id);

    List<Blog> selectBlogPageList(Integer pageNum, Integer pageSize,Blog blog);

    Blog saveBlog(Blog blog);

    Blog updateBlogById(Blog blog);

    int deleteBlogById(Long id);

//    List<> selectBlogHomeList(int pageNum, int pageSize);
}
