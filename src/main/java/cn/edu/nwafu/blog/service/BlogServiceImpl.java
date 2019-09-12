package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.BlogMapper;
import cn.edu.nwafu.blog.dao.TagMapper;
import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.BlogTag;
import cn.edu.nwafu.blog.entity.vo.BlogVO;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

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

    @Autowired
    private TagMapper tagMapper;

    //根据Id查询博客
    @Override
    public Blog selectBlogById(Long id) {

        return blogMapper.selectBlogById(id);
    }

    //返回博客列表
    @Override
    public List<Blog> selectBlogPageList(Integer pageNum, Integer pageSize, Blog blog) {

        PageHelper.startPage(pageNum, pageSize);

        return blogMapper.selectBlogPageList(blog);
    }

    //保存博客
    @Override
    public Long saveBlog(BlogVO blog) {

        //保存博客
        blogMapper.saveBlog(blog);

        return insertBlogTag(blog);

    }

    //根据id更新博客
    @Override
    public int updateBlogById(BlogVO blog) {
        int i = blogMapper.updateBlogById(blog);
        tagMapper.deleteBlogTagByBlogId(blog.getId());
        insertBlogTag(blog);
        return i;


    }

    public Long insertBlogTag(BlogVO blog){
        Long blogId = blog.getId();
        String[] tagIdStr = blog.getTagId().split(",");
        Long[] tagId = new Long[tagIdStr.length];

        List<BlogTag> list = new ArrayList<>();
        for (int i = 0; i < tagIdStr.length; i++) {
            tagId[i] = Long.valueOf(Integer.parseInt(tagIdStr[i]));
            BlogTag blogTag = new BlogTag(blogId, tagId[i]);
            list.add(blogTag);
        }
        //保存标签
        tagMapper.saveBlogTag(list);
        return blogId;
    }

    //删除博客（彻底删除）
    @Override
    public int deleteBlogById(Long id) {
        int count = blogMapper.deleteBlogById(id);
        return count;
    }


    //首页查询博客
    @Override
    public List<Blog> selectBlogHomeList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return blogMapper.selectBlogPageList(null);
    }

}
