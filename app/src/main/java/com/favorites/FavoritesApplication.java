package com.favorites;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;

import java.net.InetAddress;
import java.net.UnknownHostException;

@SpringBootApplication

public class FavoritesApplication extends SpringBootServletInitializer {

    private static Logger log =  LoggerFactory.getLogger(FavoritesApplication.class);
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(FavoritesApplication.class);
    }

    public static void main(String[] args){

        log.info("服务开始启动~");
        ConfigurableApplicationContext applicationContext = SpringApplication.run(FavoritesApplication.class, args);
        ConfigurableEnvironment env = applicationContext.getEnvironment();

        log.info("\n----------------------------------------------------------\n\t" +
                        "Application: '{}' is running! Access URLs:\n\t" +
                        "系统地址: \t\thttp://127.0.0.1:{}\n\t" +
                        "API Doc: \thttp://127.0.0.1:{}/swagger-ui.html\n" +
                        "--------关注ITSource每日分享,获取更多学习资源呀~----------------------------------",
                env.getProperty("spring.application.name")==null?"ITSource":env.getProperty("spring.application.name"),
                //InetAddress.getLocalHost().getHostAddress(),
                env.getProperty("server.port"),
                //InetAddress.getLocalHost().getHostAddress(),
                env.getProperty("server.port"));
    }

}