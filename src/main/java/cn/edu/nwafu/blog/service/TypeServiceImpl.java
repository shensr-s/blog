package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.TypeMapper;
import cn.edu.nwafu.blog.entity.Type;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/6
 **/
@Service
@Transactional
public class TypeServiceImpl implements ITypeService {

    @Autowired
    private TypeMapper typeMapper;
    @Override
    public Type saveType(Type type) {
        return typeMapper.saveType(type);
    }

    @Override
    public Type selectTypeById(Long id) {
        return typeMapper.selectTypeById(id);
    }

    @Override
    public List<Type> selectTypePageList(Integer pageNum, Integer pageSize,String name) {
        PageHelper.startPage(pageNum,pageSize);
        return typeMapper.selectTypePageList(name);
    }

    @Override
    public Type updateTypeById(Type type) {
        return typeMapper.updateTypeById(type);
    }

    @Override
    public Type deleteTypeById(Long id) {
        return typeMapper.deleteTypeById(id);
    }

    @Override
    public Type selectTypeByName(String name) {
        return typeMapper.selectTypeByName(name);
    }
}
