package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.entity.Type;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客类型
 * @create 2019/9/6
 **/

public interface ITypeService {

    Type saveType(Type type);

    Type selectTypeById(Long id);

    List<Type> selectTypePageList(Integer pageNum, Integer pageSize,String name);

    Type updateTypeById(Type type);

    Type deleteTypeById(Long id);

    Type selectTypeByName(String name);
}
