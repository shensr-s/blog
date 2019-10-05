package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.vo.BlogVO;
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

    int saveBlog(BlogVO blog);

    int updateBlogById(BlogVO blog);

    int deleteBlogById(Long id);

    List<Tag> selectTagByBlogId(Long id);

    List<String> selectGroupByYears();

    List<Blog> selectBlogByYear(String year);

    void updateBlogViews(Long id);
}

