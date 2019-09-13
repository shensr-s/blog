package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.TagMapper;
import cn.edu.nwafu.blog.entity.BlogTag;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.vo.TagVO;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/11
 **/

@Service
@Transactional
public class TagServiceImpl implements ITagService {

    @Autowired
    private TagMapper tagMapper;

    @Override
    public int saveTag(TagVO tag) {
        return tagMapper.saveTag(tag);
    }

    @Override
    public Tag selectTagById(Long id) {
        return null;
    }

    @Override
    public List<Tag> selectTagPageList(Integer pageNum, Integer pageSize, String name) {
        PageHelper.startPage(pageNum,pageSize);
        return tagMapper.selectTagPageList(name);
    }

    @Override
    public int updateTagById(TagVO tag) {
        return tagMapper.updateTagById(tag);
    }

    @Override
    public int deleteTagById(Long id) {
        return 0;
    }

    @Override
    public Tag selectTagByName(String name) {

        return tagMapper.selectTagByName(name);
    }

    @Override
    public List<Tag> selectTags() {
        return tagMapper.selectTags();
    }

    /**
     *
     * @param flag 为1 只查询前6条数据
     * @return
     */
    @Override
    public List<Tag> selectTagsAndCount(Integer flag) {
        List<Tag> tagList=null;
        if(flag==1){
            //flag为1分页查询
            PageHelper.startPage(1,10);
            tagList=tagMapper.selectTagsAndCount();
        }else {
            //查询全部
            tagList=tagMapper.selectTagsAndCount();
        }
        return tagList;
    }

    @Override
    public List<BlogTag> selectTagByBlogId(Long id) {
        return tagMapper.selectTagByBlogId(id);
    }
}
