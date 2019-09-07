package cn.edu.nwafu.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author shensr
 * @Date 2019/9/5
 * 博客类型
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Type {

    private Long id;//id

    private String name;//类型名称

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private boolean isDeletedFlag;//删除标记
}
