package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.BlogMapper;
import cn.edu.nwafu.blog.entity.Blog;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/7
 **/

@Service
@Transactional
public class BlogServiceImpl implements IBlogService {

    @Autowired
    private BlogMapper blogMapper;

    //根据Id查询博客
    @Override
    public Blog selectBlogById(Long id) {

        return blogMapper.selectBlogById(id);
    }

    //返回博客列表
    @Override
    public List<Blog> selectBlogPageList(Integer pageNum, Integer pageSize, Blog blog) {

        PageHelper.startPage(pageNum,pageSize);

        return blogMapper.selectBlogPageList(blog);
    }

    //保存博客
    @Override
    public Blog saveBlog(Blog blog) {
        Blog saveBlog = blogMapper.saveBlog(blog);
        return saveBlog;
    }

    //根据id更新博客
    @Override
    public Blog updateBlogById(Blog blog) {
        return blogMapper.updateBlogById(blog);
    }

    //删除博客（彻底删除）
    @Override
    public int deleteBlogById(Long id) {
        int count = blogMapper.deleteBlogById(id);
        return count;
    }
}
