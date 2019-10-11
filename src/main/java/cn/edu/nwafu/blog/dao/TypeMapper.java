package cn.edu.nwafu.blog.dao;

import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.TypeVO;
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

    int saveType(TypeVO type);

    Type selectTypeById(Long id);

    List<Type> selectTypePageList(String name);

    int updateTypeById(TypeVO type);

    int deleteTypeById(Long id);

    Type selectTypeByName(String name);

    List<Type> selectTypes();

    List<Type> selectTypesAndCount();


}
