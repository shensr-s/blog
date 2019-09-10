package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.Blog;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/7
 **/

@Repository
public interface BlogMapper {
    Blog selectBlogById(Long id);

    List<Blog> selectBlogPageList( Blog blog);

    Blog saveBlog(Blog blog);

    Blog updateBlogById(Blog blog);

    int deleteBlogById(Long id);
}

