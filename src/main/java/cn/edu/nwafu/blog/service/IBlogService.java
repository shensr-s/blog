package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.vo.BlogVO;

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

    Long saveBlog(BlogVO blog);

    int updateBlogById(BlogVO blog);

    int deleteBlogById(Long id);

    List<Blog> selectBlogHomeList(Integer pageNum, Integer pageSize);

//    List<> selectBlogHomeList(int pageNum, int pageSize);
}
