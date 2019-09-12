package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.BlogTag;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.TagVO;
import cn.edu.nwafu.blog.entity.vo.TypeVO;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/11
 **/

public interface ITagService {

    int saveTag(TagVO Tag);

    Tag selectTagById(Long id);

    List<Tag> selectTagPageList(Integer pageNum, Integer pageSize, String name);

    int updateTagById(TagVO Tag);

    int deleteTagById(Long id);

    Tag selectTagByName(String name);

    public List<Tag> selectTags();

    List<Tag> selectTagsAndCount();

    List<BlogTag> selectTagByBlogId(Long id);
}
