package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.BlogTag;
import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.vo.TagVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/11
 **/
@Repository
public interface TagMapper {
    int saveTag(TagVO tag);

    Tag selectTagById(Long id);

    List<Tag> selectTagPageList(String name);

    int updateTagById(TagVO tag);

    int deleteTagById(Long id);

    Tag selectTagByName(String name);

    List<Tag> selectTags();

    List<Tag> selectTagsAndCount();

    int saveBlogTag(List<BlogTag> list);

    List<BlogTag> selectTagByBlogId(Long id);

    void deleteBlogTagByBlogId(Long id);
}
