package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.BlogMapper;
import cn.edu.nwafu.blog.dao.TagMapper;
import cn.edu.nwafu.blog.entity.Blog;
import cn.edu.nwafu.blog.entity.BlogTag;
import cn.edu.nwafu.blog.entity.vo.BlogVO;
import cn.edu.nwafu.blog.exception.CustomizeException;
import cn.edu.nwafu.blog.util.MarkdownUtils;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.BeanUtils;
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

    /**
     * 根据Id查询博客
     * @param id
     * @return
     */
    @Override
    public BlogVO selectBlogById(Long id) {

        return blogMapper.selectBlogById(id);
    }

    /**
     * 返回博客列表
     * @param pageNum
     * @param pageSize
     * @param blog
     * @return
     */
    @Override
    public List<BlogVO> selectBlogPageList(Integer pageNum, Integer pageSize, Blog blog) {

        PageHelper.startPage(pageNum, pageSize);

        return blogMapper.selectBlogPageList(blog);
    }


    /**
     * 保存博客
     * @param blog
     * @return
     */
    @Override
    public Long saveBlog(BlogVO blog) {

        //保存博客
        blogMapper.saveBlog(blog);

        return insertBlogTag(blog);

    }

    /**
     * 根据id更新博客
     * @param blog
     * @return
     */
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
        // 保存标签
        tagMapper.saveBlogTag(list);
        return blogId;
    }

    /**
     * 删除博客（物理删除）
     * @param blog
     * @return
     */
    @Override
    public int deleteBlogById(Blog blog) {
        int count = blogMapper.updateByPrimaryKeySelective(blog);
        return count;
    }


    /**
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public List<BlogVO> selectBlogHomeList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return blogMapper.selectBlogPageList(null);
    }


    /**
     * 根据id查询博客 并将markdown转化为HTML在页面展示
     * @param id
     * @return
     */
    @Override
    public BlogVO getAndConvert(Long id) {
        BlogVO blog = blogMapper.selectBlogById(id);

        //博客不存在,抛出自定义异常
        if (blog == null) {
            throw new CustomizeException("当前博客不存在！！");
        }

        BlogVO b = new BlogVO();
        //复制新查询的值到新建的blog
        BeanUtils.copyProperties(blog,b);
        String content = b.getContent();
        String contentResult = MarkdownUtils.markdownToHtmlExtensions(content);
        b.setContent(contentResult);
        return  b;
    }

    /**
     * 归档页面 根据年份显示当前年份的博客
     * @return
     */
    @Override
    public Map<String, List<BlogVO>> archiveBlog() {
        List<String> years = blogMapper.selectGroupByYears();

        Map<String, List<BlogVO>> map = new HashMap<>();
        //TODO 待优化
        for (int i = 0; i <years.size() ; i++) {
            List<BlogVO> blogList = blogMapper.selectBlogByYear(years.get(i));
            map.put(years.get(i),blogList);
        }

        return map;
    }

    @Override
    public void updateBlogViews(Long id) {
        blogMapper.updateBlogViews(id);
    }


}
