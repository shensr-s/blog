package cn.edu.nwafu.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author shensr
 * @version V1.0
 * @description:
 * @create 2019/9/6
 **/
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/login")
    public String locLogin(){
        return "admin/login";
    }


}
