package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 博客类型
 * @create 2019/9/6
 **/
@RequestMapping("/blog/type")
@Controller
public class TypeController {

    @Autowired
    private TypeServiceImpl typeService;

    /**
     * 跳转到type管理页面
     *
     * @return
     */
    @RequestMapping("/manage")
    public String locTypesManage() {
        return "type/typesManage";
    }

    //新增Type
    @RequestMapping("/add")
    @ResponseBody
    public ResultVO saveType(Type type) {
        ResultVO resultVO = new ResultVO(200, "新增类型成功");
        //查询新增的类型是否存在
        Type typeExist = typeService.selectTypeByName(type.getName());
        if (typeExist != null) {
            Type typeResult = typeService.saveType(type);
            if (typeResult == null) {
                resultVO.setCode(601);
                resultVO.setMsg("新增类型失败");
            }
        } else {
            resultVO.setCode(601);
            resultVO.setMsg("类型已经存在");
        }
        return resultVO;
    }


    //获取type列表
    @RequestMapping("/ajax/list")
    public String selectTypePageList(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     @RequestParam(name = "search", required = false) String name,
                                     Model model) {
        List<Type> types = typeService.selectTypePageList(pageNum, pageSize, name);
        if (types.size() != 0) {
            PageInfo<Type> pageInfo = new PageInfo<Type>(types);
            model.addAttribute("types", pageInfo.getList());
            model.addAttribute("page", pageInfo);
        }
        return "type/typeList";
    }


    @RequestMapping("/edit")
    public Type updateTypeById(Type type) {
        return typeService.updateTypeById(type);
    }


    public Type deleteTypeById(Long id) {
        return typeService.deleteTypeById(id);
    }

}
