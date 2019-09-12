package cn.edu.nwafu.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/12
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogTag {
    private Long blogId;

    private Long tagId;
}
