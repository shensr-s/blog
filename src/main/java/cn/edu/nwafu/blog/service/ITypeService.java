package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.TypeVO;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客类型
 * @create 2019/9/6
 **/

public interface ITypeService {

    int saveType(TypeVO type);

    Type selectTypeById(Long id);

    List<Type> selectTypePageList(Integer pageNum, Integer pageSize,String name);

    int updateTypeById(TypeVO type);

    int deleteTypeById(Long id);

    Type selectTypeByName(String name);

    List<Type> selectTypes();

    List<Type> selectTypesAndCount(Integer flag);
}
