package cn.edu.nwafu.blog;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
/**
 * @author shensr
 * @version V1.0
 * @description
 * @create 2019/9/6
 **/
@MapperScan(basePackages = "cn.edu.nwafu.blog")
@SpringBootApplication
public class BlogApplication {

    public static Logger logger = LoggerFactory.getLogger(BlogApplication.class);
    public static void main(String[] args) {
        SpringApplication.run(BlogApplication.class, args);
        logger.info("博客项目启动成功");
    }

}
