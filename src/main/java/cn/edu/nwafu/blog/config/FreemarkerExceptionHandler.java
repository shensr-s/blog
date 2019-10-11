package cn.edu.nwafu.blog.config;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.Writer;

/**
 * @author shensr
 * @Date 2019/9/5
 */
@Component
public class FreemarkerExceptionHandler implements TemplateExceptionHandler {

    private static final Logger log = LoggerFactory.getLogger(FreemarkerExceptionHandler.class);

    @Override
    public void handleTemplateException(TemplateException te, Environment environment, Writer writer) throws TemplateException {
        log.warn("[Freemarker Error: " + te.getMessage() + "]");
        String missingVariable = "undefined";
        try {
            String[] tmp = te.getMessageWithoutStackTop().split("\n");
            if (tmp.length > 1) {
                tmp = tmp[1].split(" ");
            }
            if (tmp.length > 1) {
                missingVariable = tmp[1];
            }
            writer.write("");
            log.error("[出错了，请联系网站管理员]", te);
        } catch (IOException e) {
            throw new TemplateException(
                    "Failed to print error message. Cause: " + e, environment);
        }

    }
}
