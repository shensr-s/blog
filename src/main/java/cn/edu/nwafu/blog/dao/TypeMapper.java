package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/6
 **/

@Repository
public interface TypeMapper {

    Type saveType(Type type);

    Type selectTypeById(Long id);

    List<Type> selectTypePageList(String name);

    Type updateTypeById(Type type);

    Type deleteTypeById(Long id);

    Type selectTypeByName(String name);
}
