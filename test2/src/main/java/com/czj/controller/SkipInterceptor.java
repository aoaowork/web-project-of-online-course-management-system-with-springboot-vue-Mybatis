package com.czj.controller;

import java.lang.annotation.*;
/**
 * 在不需要登录验证的Controller的方法上使用此注解，放行
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface SkipInterceptor {
}

