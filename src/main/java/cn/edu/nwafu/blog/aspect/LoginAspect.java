package cn.edu.nwafu.blog.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;

/**
 * @author shensr
 * @version V1.0
 * @description: 利用cookie登录，任何界面都可以登录，如果cookie存在，优化用户体验
 * @create 2019/10/9
 **/
@Aspect
public class LoginAspect {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 配置切入点表达式
     */
    @Pointcut("execution(* cn.edu.nwafu.blog.controller.*.*(..))")
    public void declareJoinPointExpression() {
        // logger.info("我是注解中要执行的方法declareJoinPointExpression()");
    }

    /**
     * 前置通知
     * @param joinpoint
     */

    @Before("declareJoinPointExpression()")
    public void beforeMethod(JoinPoint joinpoint) {
        // String methodName = joinpoint.getSignature().getName();
        // List<Object> args = Arrays.asList(joinpoint.getArgs());
        // logger.info("The method " + methodName + " begins with " + args);




    }



    /**
     * 后置通知：在目标方法执行后（无论是否发生异常），执行的通知；
     *          在后置通知中，还不能访问目标方法执行的结果
     * @param joinPoint
     */
    @After("declareJoinPointExpression()")
    public void afterMethod(JoinPoint joinPoint) {

    }
}
