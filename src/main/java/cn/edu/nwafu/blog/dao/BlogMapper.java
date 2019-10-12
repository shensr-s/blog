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
    BlogVO selectBlogById(Long id);

    List<BlogVO> selectBlogPageList( Blog blog);

    int saveBlog(BlogVO blog);

    int updateBlogById(BlogVO blog);

    int deleteBlogById(Long id);

    List<Tag> selectTagByBlogId(Long id);

    List<String> selectGroupByYears();

    List<BlogVO> selectBlogByYear(String year);

    void updateBlogViews(Long id);

    /**
     * 更新博客
     * @param blog
     * @return
     */
    int updateByPrimaryKeySelective(Blog blog);
}

