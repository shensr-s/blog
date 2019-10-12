package cn.edu.nwafu.blog.entity.vo;

import cn.edu.nwafu.blog.entity.Tag;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;



/***
 * Data注解在类上，会为类的所有属性自动生成
 * setter/getter、equals、canEqual、hashCode、toString方法，
 * 如为final属性，则不会为该属性生成setter方法。
 */
/**
 * @author shensr
 * @version V1.0
 * @description 博客实体类
 * @create 2019/9/6
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlogVO extends BaseVO {
    /**
     * id
     */
    private Long id;
    /**
     * 标题
     */
    private String title;
    /**
     * 内容
     */
    private String content;
    /**
     * 博客首图
     */
    private String firstPicture;
    /**
     * 标记 原创 转载 翻译
     */
    private String flag;
    /**
     * 浏览次数
     */
    private Integer views;
    /**
     * 赞赏功能是否开启
     */
    private Boolean appreciation;
    /**
     * 转载声明是否开启
     */
    private Boolean shareStatement;
    /**
     * 评论功能是否开启
     */
    private Boolean commentAbled;
    /**
     * 是否发布
     */
    private Boolean published;
    /**
     * 是否推荐
     */
    private Boolean recommend;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 是否删除
     */
    private Boolean isDeletedFlag;
    /**
     * 博客类型id
     */
    private Long typeId;
    /**
     * 博客类型
     */
    private String typeName;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 用户头像
     */
    private String avatar;
    /**
     * 博客描述
     */
    private String description;
    /**
     * 博客标签list
     */
    private String tagId;
    /**
     * 标签
     */
    private List<Tag> tagList;

    /**
     * 分页参数 页号
     */
    private Integer pageNum;
    /**
     * 分页参数 页面大小
     */
    private Integer pageSize;


}
