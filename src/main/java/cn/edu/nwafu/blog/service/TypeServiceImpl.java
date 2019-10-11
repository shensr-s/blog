package cn.edu.nwafu.blog.service;

import cn.edu.nwafu.blog.dao.TypeMapper;
import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.TypeVO;
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
    public int saveType(TypeVO type) {
        return typeMapper.saveType(type);
    }

    @Override
    public Type selectTypeById(Long id) {
        return typeMapper.selectTypeById(id);
    }

    @Override
    public List<Type> selectTypePageList(Integer pageNum, Integer pageSize, String name) {
        PageHelper.startPage(pageNum, pageSize);
        return typeMapper.selectTypePageList(name);
    }

    @Override
    public int updateTypeById(TypeVO type) {
        return typeMapper.updateTypeById(type);
    }

    @Override
    public int deleteTypeById(Long id) {
        return typeMapper.deleteTypeById(id);
    }

    @Override
    public Type selectTypeByName(String name) {
        return typeMapper.selectTypeByName(name);
    }

    @Override
    public List<Type> selectTypes() {
        return typeMapper.selectTypes();
    }

    /**
     * 查询博客类型
     *
     * @param flag 1 ：查询首页最新推荐 0 ：查询全部
     * @return
     */
    @Override
    public List<Type> selectTypesAndCount(Integer flag) {
        List<Type> typeList = null;

        if (flag == 1) {
            //flag为1 查询首页最新推荐
            PageHelper.startPage(1, 6);
            typeList = typeMapper.selectTypesAndCount();
        } else {
            //flag为0查询全部
            typeList = typeMapper.selectTypesAndCount();
        }


        return typeList;
    }

}
