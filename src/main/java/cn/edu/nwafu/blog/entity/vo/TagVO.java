package cn.edu.nwafu.blog.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/11
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TagVO extends BaseVO {
    private Long id;//id

    private String name;//类型名称

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Boolean isDeletedFlag;//删除标记
}
