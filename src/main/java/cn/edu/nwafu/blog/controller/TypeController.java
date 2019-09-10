package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Type;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.entity.vo.TypeVO;
import cn.edu.nwafu.blog.service.TypeServiceImpl;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
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

    private final Logger logger= LoggerFactory.getLogger(this.getClass());

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
    public ResultVO saveType(@RequestBody TypeVO type) {
        ResultVO resultVO = new ResultVO(200, "新增类型成功");
        //查询新增的类型是否存在
        Type typeExist = typeService.selectTypeByName(type.getName());
        if (typeExist == null) {
            type.setCreateTime(new Date());
            type.setUpdateTime(new Date());
            type.setIsDeletedFlag(false);

            try {
                typeService.saveType(type);

            }catch (Exception e){

                resultVO.setCode(601);
                resultVO.setMsg("新增类型失败");
                logger.error("错误：{}；Exception：{}",resultVO.getMsg(),e);
            }

        } else {
            resultVO.setCode(300);
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
    @ResponseBody
    public ResultVO updateTypeById(@RequestBody TypeVO type) {

        ResultVO resultVO = null;

        //删除功能 只传入ID 逻辑删除
        if (type.getName() == null) {
            resultVO = new ResultVO(200, "删除成功");
            type.setIsDeletedFlag(true);
            try {
                typeService.updateTypeById(type);
            }catch (Exception e) {
                resultVO.setMsg("删除失败");
                resultVO.setCode(601);
                logger.error("错误：{}；Exception：{}",resultVO.getMsg(),e);
            }
        } else {
            //修改
            resultVO = new ResultVO(200, "修改成功");
            type.setUpdateTime(new Date());
            try {
                typeService.updateTypeById(type);
            }catch (Exception e) {
                resultVO.setMsg("修改失败");
                resultVO.setCode(601);
                logger.error("错误：{}；Exception：{}",resultVO.getMsg(),e);
            }
        }

        return resultVO;
    }


    @RequestMapping("/delete")
    @ResponseBody
    public ResultVO deleteTypeById(Long id) {
        //物理删除
        int count = typeService.deleteTypeById(id);
        ResultVO resultVO = new ResultVO(200, "删除成功");
        if (count == 0) {
            resultVO.setCode(601);
            resultVO.setMsg("删除失败");
        }
        return resultVO;
    }

}
