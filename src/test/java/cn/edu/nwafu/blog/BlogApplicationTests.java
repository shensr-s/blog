package cn.edu.nwafu.blog;

import cn.edu.nwafu.blog.entity.vo.BlogVO;
import cn.edu.nwafu.blog.service.BlogServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BlogApplicationTests {
    @Autowired
    private BlogServiceImpl blogService;

    @Test
    public void contextLoads() {
        List<BlogVO> blogs = blogService.selectBlogHomeList(1, 6);
        System.out.println(blogs);
    }

}
