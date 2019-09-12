package cn.edu.nwafu.blog.controller;

import cn.edu.nwafu.blog.entity.Tag;
import cn.edu.nwafu.blog.entity.vo.ResultVO;
import cn.edu.nwafu.blog.entity.vo.TagVO;
import cn.edu.nwafu.blog.service.TagServiceImpl;
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
 * @description:
 * @create 2019/9/11
 **/

@Controller
@RequestMapping("/blog/tag")
public class TagController {


    @Autowired
    private TagServiceImpl tagService;

    private final Logger logger= LoggerFactory.getLogger(this.getClass());
    /**
     * 跳转到tag管理页面
     *
     * @return
     */
    @RequestMapping("/manage")
    public String locTagsManage() {
        return "tag/tagsManage";
    }


    //新增tag
    @RequestMapping("/add")
    @ResponseBody
    public ResultVO saveTag(@RequestBody TagVO Tag) {
        ResultVO resultVO = new ResultVO(200, "新增标签成功");
        //查询新增的标签是否存在
        Tag TagExist = tagService.selectTagByName(Tag.getName());
        if (TagExist == null) {
            Tag.setCreateTime(new Date());
            Tag.setUpdateTime(new Date());
            Tag.setIsDeletedFlag(false);

            try {
                tagService.saveTag(Tag);

            }catch (Exception e){

                resultVO.setCode(601);
                resultVO.setMsg("新增标签失败");
                logger.error("错误：{}；Exception：{}",resultVO.getMsg(),e);
            }

        } else {
            resultVO.setCode(300);
            resultVO.setMsg("标签已经存在");
        }
        return resultVO;
    }


    //获取Tag列表
    @RequestMapping("/ajax/list")
    public String selectTagPageList(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     @RequestParam(name = "search", required = false) String name,
                                     Model model) {
        List<Tag> Tags = tagService.selectTagPageList(pageNum, pageSize, name);
        if (Tags.size() != 0) {
            PageInfo<Tag> pageInfo = new PageInfo<>(Tags);
            model.addAttribute("tags", pageInfo.getList());
            model.addAttribute("page", pageInfo);
        }
        return "tag/tagList";
    }


    //更新tag
    @RequestMapping("/edit")
    @ResponseBody
    public ResultVO updateTagById(@RequestBody TagVO Tag) {

        ResultVO resultVO = null;

        //删除功能 只传入ID 逻辑删除
        if (Tag.getName() == null) {
            resultVO = new ResultVO(200, "删除成功");
            Tag.setIsDeletedFlag(true);
            try {
                tagService.updateTagById(Tag);
            }catch (Exception e) {
                resultVO.setMsg("删除失败");
                resultVO.setCode(601);
                logger.error("错误：{}；Exception：{}",resultVO.getMsg(),e);
            }
        } else {
            //修改
            resultVO = new ResultVO(200, "修改成功");
            Tag.setUpdateTime(new Date());
            try {
                tagService.updateTagById(Tag);
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
    public ResultVO deleteTagById(Long id) {
        //物理删除
        int count = tagService.deleteTagById(id);
        ResultVO resultVO = new ResultVO(200, "删除成功");
        if (count == 0) {
            resultVO.setCode(601);
            resultVO.setMsg("删除失败");
        }
        return resultVO;
    }

}
