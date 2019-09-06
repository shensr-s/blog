package cn.edu.nwafu.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author shensr
 * @Date 2019/9/5
 * 博客标签
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Tag {
    private Long id;//id

    private String name;//类型名称
}
