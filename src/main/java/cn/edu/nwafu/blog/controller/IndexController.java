package cn.edu.nwafu.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Controller
public class IndexController {
    @GetMapping("/")
    public String index(){

        return "index";
    }
}
