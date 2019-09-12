package cn.edu.nwafu.blog.entity.vo;

import cn.edu.nwafu.blog.entity.Tag;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author shensr
 * @Date 2019/9/5
 * <p>
 * 博客实体类
 */

/***
 * @Data注解在类上，会为类的所有属性自动生成
 * setter/getter、equals、canEqual、hashCode、toString方法，
 * 如为final属性，则不会为该属性生成setter方法。
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlogVO extends BaseVO {

    private Long id;//id

    private String title;//标题

    private String content;//内容

    private String firstPicture;//首图

    private String flag;//标记

    private Integer views;//浏览次数

    private Boolean appreciation;//赞赏功能是否开启

    private Boolean shareStatement;//转载声明是否开启

    private Boolean commentAbled;//评论功能是否开启

    private Boolean published;//是否发布

    private Boolean recommend;//是否推荐

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Boolean isDeletedFlag;//是否删除

    private Long typeId;//博客类型id

    private String typeName;//博客类型

    private Long userId;//用户id

    private String userName;//用户名

    private String description;//博客描述

    private String tagId;//博客标签list

    private List<Tag> tagList; //标签



    //  分页参数
    private Integer pageNum;

    private Integer pageSize;


}
