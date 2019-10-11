package cn.edu.nwafu.blog.generator;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description 通过java方式启动mbg，实现自定配置注解，使用maven方式会出现问题
 * @create 2019/10/9
 **/

public class Generator {
    public static void main(String[] args)  {
        List<String> warnings = new ArrayList<>();
        // 覆盖
        boolean overwrite = true;
        // 给出generatorConfig.xml文件的位置
        File configFile = new File("D:\\IdeaProjects\\blog\\src\\main\\resources\\generatorConfig.xml");
        ConfigurationParser cp = new ConfigurationParser(warnings);
        try {
            Configuration config = cp.parseConfiguration(configFile);
            DefaultShellCallback callback = new DefaultShellCallback(overwrite);
            MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
            myBatisGenerator.generate(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
